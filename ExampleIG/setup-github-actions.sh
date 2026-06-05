#!/bin/bash
# Run this once from the ExampleIG directory to set up GitHub Actions
set -e

mkdir -p .github/workflows

cat > .github/workflows/build.yml << 'EOF'
name: Build FHIR IG

on:
  push:
    branches: [ main, master ]
  pull_request:
    branches: [ main, master ]
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up Java 17
        uses: actions/setup-java@v4
        with:
          java-version: '17'
          distribution: 'temurin'

      - name: Cache FHIR packages
        uses: actions/cache@v4
        with:
          path: ~/.fhir/packages
          key: fhir-packages-${{ hashFiles('sushi-config.yaml') }}
          restore-keys: |
            fhir-packages-

      - name: Cache IG Publisher JAR
        uses: actions/cache@v4
        with:
          path: input-cache/publisher.jar
          key: ig-publisher-${{ hashFiles('input-cache/publisher.jar') }}
          restore-keys: |
            ig-publisher-

      - name: Install SUSHI
        run: npm install -g fsh-sushi

      - name: Download IG Publisher
        run: |
          mkdir -p input-cache
          if [ ! -f input-cache/publisher.jar ]; then
            curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar \
              -o input-cache/publisher.jar
          fi

      - name: Run SUSHI
        run: sushi .

      - name: Run IG Publisher
        run: |
          java -jar input-cache/publisher.jar \
            -ig ig.ini \
            -tx https://tx.fhir.org/r4 \
            -no-sushi

      - name: Upload output as artifact
        uses: actions/upload-artifact@v4
        if: always()
        with:
          name: ig-output-${{ github.run_number }}
          path: output/
          retention-days: 30

      - name: Upload QA report
        uses: actions/upload-artifact@v4
        if: always()
        with:
          name: qa-report-${{ github.run_number }}
          path: output/qa.html
          retention-days: 30

      - name: Check for QA errors
        if: always()
        run: |
          if [ -f output/qa.html ]; then
            ERROR_COUNT=$(grep -o 'errors' output/qa.html | wc -l || true)
            echo "QA report generated. Check the qa-report artifact for details."
          fi

  deploy-pages:
    runs-on: ubuntu-latest
    needs: build
    if: github.ref == 'refs/heads/main' || github.ref == 'refs/heads/master'
    permissions:
      pages: write
      id-token: write
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}

    steps:
      - name: Download build artifact
        uses: actions/download-artifact@v4
        with:
          name: ig-output-${{ github.run_number }}
          path: output/

      - name: Setup Pages
        uses: actions/configure-pages@v4

      - name: Upload to Pages
        uses: actions/upload-pages-artifact@v3
        with:
          path: output/

      - name: Deploy to GitHub Pages
        id: deployment
        uses: actions/deploy-pages@v4
EOF

echo "✅ Created .github/workflows/build.yml"
echo ""
echo "Next steps:"
echo "  1. git init (if not already a repo)"
echo "  2. git add ."
echo "  3. git commit -m 'Initial commit'"
echo "  4. Create a repo on GitHub and push"
echo "  5. In GitHub repo Settings → Pages → Source: set to 'GitHub Actions'"
echo "  6. In GitHub repo Settings → Actions → General: ensure 'Read and write permissions' is ON"
