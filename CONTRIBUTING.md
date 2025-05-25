# Contributing to Syncra Engine

Thank you for your interest in contributing to **Syncra Engine**! Your help is what makes this project grow into a powerful tool for rhythm game development. This document will guide you through the contribution process.

---

## Before You Start

- Ensure you're using the latest version of **Godot Engine 4.x**.
- Familiarize yourself with how the editor is structured (see `README.md`).
- Read this document thoroughly before submitting a pull request.

---

## Reporting Issues

If you encounter a bug, crash, or usability problem, please open an issue on GitLab with the following:

- Clear and descriptive **title**
- Steps to **reproduce the issue**
- Screenshots or video if applicable
- System information (OS, GPU, Godot version, etc.)
- Any relevant logs or stack traces

Before you post, make sure that:

- Your issue is NOT a duplicate
- Your issue is correctly labelled and tagged
- Your issue does not cover a bug that has already been disproven or fixed
- Your issue does not cover an outdated version of Syncra Engine

If we find the bug to be reproducable and valid, it will be marked with the `bug` tag and a Scoped `risk` tag according to the level of risk the bug introduces.

---

## Requesting Features

We welcome new ideas! Please include:

- A clear problem statement or use case
- How your idea improves Syncra Engine
- Optional: mockups or code examples

We label viable feature ideas with `enhancement` and may discuss them before approving a PR.

---

## 🛠 Making Contributions

### 1. Fork the Repository

```bash
# Clone the Repository
git clone https://github.com/your-username/syncra-engine.git
cd syncra-engine
```

### 2. Create a new branch

```bash
# Create and checkout into a new branch. Use "bug/" if your change is a bug rather than a feature
git checkout -b feature/feature_name
```

### 3. Make your changes

When making changes, we HIGHLY recommend:

- You follow standard code styling conventions (See below)
- Make sure commits are atomic and descriptive
- Test your changes thoroughly

### 4. Push and open a merge request

```bash
git push origin feature/feature_name
```

Afterwards, go into GitLab and open a merge request for `main`

## Code Styling Guidelines

- Use Godot GDScript style conventions (4.x).
- Name files and folders clearly and consistently (snake_case or PascalCase).
- Use tabs (not spaces) in GDScript.
- Add comments for complex logic. (This is SO INCREDIBLY IMPORTANT THAT YOU DO THIS, People will not spend hours and hours deciphering your code. Please be considerate of other developers.)
- Organize scenes and scripts in appropriate subfolders (ui/, editor/, core/, etc).

## Merge Request Checklist

- The PR description clearly explains the purpose.
- Code follows style guidelines (see above)
- No unrelated changes or formatting commits
- New functionality is tested and working
- UI Changes are accessible and responsive

## Community Guidelines

We follow a friendly and inclusive contributor environment. By participating in this project, you agree to follow the [Contributor Covenant Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/)

