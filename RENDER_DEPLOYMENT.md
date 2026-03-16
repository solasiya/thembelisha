# Deploying Thembelisha Day Care to Render

This project is a **Static Site**, which makes it very easy to host on [Render](https://render.com/). Follow these steps to get your website live:

## Step 1: Push your code to GitHub
1. Create a new repository on [GitHub](https://github.com/new).
2. Upload all your project files to this repository.
   - If you are using Git, run:
     ```bash
     git add .
     git commit -m "Initial commit"
     git push origin main
     ```

## Step 2: Connect to Render
1. Log in to [Render](https://dashboard.render.com/).
2. Click the **New** button and select **Static Site**.
3. Connect your GitHub account and select the `Thembelisha` repository.

## Step 3: Configure Build Settings
Render will automatically detect your project. Use these settings:
- **Name**: `thembelisha-daycare` (or your choice)
- **Runtime**: `Static Site`
- **Build Command**: `None` (leave it blank, as this is a static project)
- **Publish Directory**: `.` (the current folder)

## Step 4: Deploy
1. Click **Create Static Site**.
2. Render will build and deploy your site in about a minute.
3. You will get a unique URL (e.g., `thembelisha-daycare.onrender.com`) where your site is now live!

## Tip: Custom Domain
If you have a custom domain (like `thembelishadaycare.co.za`), you can add it in the **Settings** tab of your Render dashboard under **Custom Domains**.

---

### Local Preview
To see your site locally before deploying:
1. Make sure you have [Node.js](https://nodejs.org/) installed.
2. Run `npm install` and then `npm start`.
3. Open `http://localhost:3000` in your browser.
