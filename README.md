# ``BankCore``

# BankCore: Secure Banking Framework

![CI Status](https://github.com/RahulRR16/BankCore/actions/workflows/main.yml/badge.svg)
![Security Rating](https://img.shields.io/badge/Security-OWASP_MASVS-blue?style=for-the-badge&logo=github)

A high-integrity iOS banking logic module built with a **Security-First** mindset. This project demonstrates the implementation of a secure SDLC (Software Development Life Cycle) for FinTech applications.

## 🚀 Key Features

* **Defensive Architecture:** Business logic isolated from UI to prevent logic bypass attacks.
* **DevSecOps Pipeline:** Automated GitHub Actions workflow including:
    * **Unit Testing (TDD):** 100% code coverage on transfer limits and negative balance checks.
    * **Secret Scanning:** Integrated **Gitleaks** to prevent credential exposure.
    * **Push Protection:** Hard-blocked commits containing API keys or sensitive data.
* **Compliance:** Built to align with **OWASP MASVS** (Mobile Application Security Verification Standard).

## 🛠 Tech Stack

* **Language:** Swift 6.0
* **CI/CD:** GitHub Actions (macOS Runner)
* **Testing:** XCTest
* **Security Tools:** Gitleaks, GitHub Advanced Security

## 🛡 Security Controls Implemented

1.  **Input Validation:** Strict type-checking and bounds-checking for monetary transactions.
2.  **Pipeline Guardrails:** Automated build failure upon detection of hardcoded secrets.
3.  **Zero-Trust CI:** Environment variables used for secrets; no keys in source code.

## 👨‍💻 Author
**Rahul** - Senior iOS & Security Engineer
