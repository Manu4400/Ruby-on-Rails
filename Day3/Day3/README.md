# Day 3 – Running Rails Skip Commands

**Rails skip commands** affectthe **browser behavior** and **application output**, with visual examples.

---

## Default Rails Application

### Command
```bash
rails new AppName
```

### Behavior
- Full Rails web application
- HTML, CSS, and JavaScript enabled
- Dynamic navigation and interactions work normally

### Output
<img width="1920" height="1080" alt="Rails default app" src="https://github.com/user-attachments/assets/0a068621-a33e-478a-b0d3-0c2d060bcf79" />

---

## Skip JavaScript

### Command
```bash
rails new myapp --skip-javascript
```

### Browser Behavior
- Clicking a link reloads the entire page
- No dynamic behavior (Turbo / AJAX disabled)
- Looks simple and static

### Output
<img width="660" height="391" alt="Skip JavaScript output" src="https://github.com/user-attachments/assets/da3bdfdf-52ea-405e-9b7a-cfdf58b5ef9c" />

---

## Skip CSS

### Command
```bash
rails new myapp --skip-css
```

### Browser Behavior
- Page looks plain
- No colors, spacing, or layout
- Only raw HTML structure is displayed

### Output
<img width="660" height="391" alt="Skip CSS output" src="https://github.com/user-attachments/assets/da3bdfdf-52ea-405e-9b7a-cfdf58b5ef9c" />

---

## Skip Active Record (Database)

### Command
```bash
rails new myapp --skip-active-record
```

### Application Behavior
- Pages may load
- Database-related actions fail
- No data persistence
- Forms cannot save data

### Output
<img width="2044" height="1352" alt="Skip Active Record error" src="https://github.com/user-attachments/assets/991c7e60-b0cc-4aea-8b83-6c9a0c41ecdf" />

---

## Skip JBuilder

### Command
```bash
rails new myapp --skip-jbuilder
```

### Behavior
- JSON responses only
- No `.json.jbuilder` views
- JSON must be rendered manually

### Output
<img width="1071" height="649" alt="Skip JBuilder JSON" src="https://github.com/user-attachments/assets/74621b10-ba4b-41cb-a2cc-84761f058c9c" />

---

## Skip Bundle Install

### Command
```bash
rails new myapp --skip-bundle
```

### Application Behavior
- Gems are not installed automatically
- Rails server will NOT start
- `bundle install` must be run manually

### Output
<img width="794" height="538" alt="Skip bundle error" src="https://github.com/user-attachments/assets/6ea6a2bf-0b59-40c4-9abf-e76ffe8063ee" />

---


