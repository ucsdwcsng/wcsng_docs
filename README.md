# WCSNG Docs

Welcome to the WCSNG Docs repository! These docs are a collaborative effort by the members of [Wireless Communication Sensing and Neworking Group](https://wcsng.ucsd.edu) at [UC San Diego](https://ucsd.edu).

The website is accessible at [ucsdwcsng.github.io/wcsng_docs](https://ucsdwcsng.github.io/wcsng_docs).

## Getting Started

To contribute to the WCSNG documentation, you have the following options:

### Option 1: Docker Setup (preferred)

1. **Fork** this repository by clicking on the "Fork" button at the top right corner of the repository page. This creates a copy of the repository under your GitHub account.

2. **Clone** the forked repository to your local machine using the following command:

   ```shell
   git clone https://github.com/your-username/wcsng_docs.git
   ```

   Replace `your-username` with your GitHub username.

3. **Navigate** to the repository's directory:

   ```shell
   cd wcsng_docs
   ```

4. Build and run the Docker container using Docker Compose:

   ```shell
   docker-compose up -d
   ```

   This will build the Docker container based on the provided Dockerfile and start the Jekyll server inside the container.

5. Edit or create new Markdown files in the appropriate directories to make your contributions. You can use your preferred text editor or Markdown editor to write the documentation. The changes will be reflected in the running Docker container.

6. Once you are satisfied with your changes, **commit** and **push** them to your forked repository:

   ```shell
   git add .
   git commit -m "Add your commit message here"
   git push
   ```

7. Finally, create a pull request (PR) by navigating to the original repository's page and clicking on the "New pull request" button. Provide a meaningful title and description for your PR, and submit it for review.

   Your contributions will be reviewed, and upon approval, they will be merged into the main repository

### Option 2: Local Setup

1. **Fork** this repository by clicking on the "Fork" button at the top right corner of the repository page. This creates a copy of the repository under your GitHub account.

2. **Clone** the forked repository to your local machine using the following command:

   ```shell
   git clone https://github.com/your-username/wcsng_docs.git
   ```

   Replace `your-username` with your GitHub username.

3. **Navigate** to the repository's directory:

   ```shell
   cd wcsng_docs
   ```

4. **Install** Jekyll and other dependencies by following the instructions in the [Just the Docs documentation](https://just-the-docs.github.io/just-the-docs/).

5. **Edit** or create new Markdown files in the appropriate directories to make your contributions. You can use your preferred text editor or Markdown editor to write the documentation.

6. **Test** your changes locally by running the Jekyll server:

   ```shell
   bundle exec jekyll serve
   ```

   This will start a local development server, and you can preview your changes by visiting `http://localhost:4000` in your web browser.

7. Once you are satisfied with your changes, **commit** and **push** them to your forked repository:

   ```shell
   git add .
   git commit -m "Add your commit message here"
   git push
   ```

8. Finally, **create a pull request (PR)** by navigating to the original repository's page and clicking on the "New pull request" button. Provide a meaningful title and description for your PR, and submit it for review.

   Your contributions will be reviewed, and upon approval, they will be merged into the main repository.
