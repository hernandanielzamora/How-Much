# How Much?

Welcome to the README file for the MyBudget App. This document provides an overview of the app, its features, installation instructions, and usage guidelines.

<p align="center">
  <img src='https://i.postimg.cc/ryfz65ZJ/how-much-onrender-com.png' border='0' alt='how-much-onrender-com' />
</p>
# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [🚀 Live Demo ](#-live-demo-)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖  How Much? <a name="about-project"></a>

**How Much?** is a user-friendly and intuitive budgeting tool designed to help you manage your finances effectively. Whether you're looking to track your expenses, set savings goals, or gain insights into your spending patterns, this app has you covered.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
<details>
<summary>Backend</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>
<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Key Features <a name="key-features"></a>

### Expensive Tracking:

- Easily input and categorize your expenses to keep a detailed record of your spending habits.

### Secure and Private:

- Your financial data is kept secure and private, as the app employs encryption and authentication measures.

### Data Storage and Persistence:

- All data will be stored in a databes managed with PostgreSQL

### Class Structure and Inheritance:

- Using RoR to structure the project.

### Test Coverage:

- Unit tests for important classes and methods using a testing framework (e.g., RSpec).

### Linter Integration:

- Use a linter (e.g., RuboCop) to enforce a consistent coding style and identify potential issues.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

If you would like to get a local copy up and running, please follow these steps.

### Prerequisites

In order to run this project you need to have ruby and ruby on rails installed in your computer. You can check that by running `ruby -v` in your console <br>

If you do not have ruby installed in your computer, you can follow [this](https://gorails.com/setup/windows/10) tutorial (for Windows) <br>

For installing ruby on MacOS you can run the following commands: <br>

```bash
brew install rbenv ruby-build
# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 3.0.1
rbenv global 3.0.1
ruby -v
```

For installing RoR you need to run 

```bash
gem install rails
```

### Setup

Clone this repository to your desired folder:
```
cd my folder
git clone  https://github.com/hernandanielzamora/How-Much.git
```

### Install

In order to fully make use of all the features you must run:

```
bundle install
```

### Usage

To run the project locally, you should run:

`rails s`

### Run tests

To run tests, you can use the following command:

`rspec spec`

### Deployment

To deploy this project locally, you can run:

`rails s`

## 🚀 Live Demo <a name="live-demo"></a>

You can check How Much? in action [here](https://how-much.onrender.com/)<br>
[Video Presentation](https://www.loom.com/share/9b8404f188464ed48725f552590a6a33)

## 👥 Author <a name="authors"></a>

## 👥 Author: <a name="authors">Hernán Zamora</a>

- GitHub: [@hernandanielzamora](https://github.com/hernandanielzamora)
- Twitter: [@HernanZamora14](https://twitter.com/HernanZamora14)
- LinkedIn: [Linkedin](https://www.linkedin.com/in/hernan-zamora-03a697236/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- Enable Visual Reports
- Add budget creation
- Add saving goals

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/hernandanielzamora/How-Much/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project please express your appreciation on LinkedIn.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to give credit to [Gregoire Vella](https://www.behance.net/gregoirevella) <br>
He created the [design](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) which I followed

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](../../LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
