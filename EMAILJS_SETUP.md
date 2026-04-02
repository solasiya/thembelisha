# EmailJS Setup Guide for Thembelisha Day Care

This guide explains how to configure EmailJS to enable the contact form on your website.

## Step 1: Create an EmailJS Account
1. Go to [emailjs.com](https://www.emailjs.com/) and create a free account.
2. Log in to your dashboard.

## Step 2: Add an Email Service
1. In the dashboard, go to **Email Services** and click **Add New Service**.
2. Select your email provider (e.g., Gmail, Outlook).
3. Connect your account and click **Create Service**.
4. **Important**: Note your **Service ID** (e.g., `service_p6yfcxp`). You will need to replace this in the `contact.html` file.

## Step 3: Create an Email Template
1. Go to **Email Templates** and click **Create New Template**.
2. Design your email. Use the following placeholders to match the form fields:
   - For the **Contact Form**:
     - `{{user_name}}`: The sender's name.
     - `{{user_email}}`: The sender's email.
     - `{{message}}`: The content of the message.
   - For the **Newsletter Form**:
     - `{{subscriber_email}}`: The email of the new subscriber.
3. Click **Save**.
4. **Important**: Note your **Template IDs** (e.g., `template_11bb4h5` and `template_newsletter`). You will need to replace these in the HTML files.

## Step 4: Get Your Public Key
1. Go to **Account** -> **Public Key**.
2. Copy your **Public Key**.

## Step 5: Update the Code
1. Open your HTML files (e.g., `index.html`, `contact.html`).
2. Scroll to the bottom and find the EmailJS script section.
3. Replace the placeholder values with your actual IDs:
   - Replace `"YOUR_PUBLIC_KEY"` with your copied Public Key.
   - In the `emailjs.sendForm` function calls, replace `'service_thembelisha'`, `'template_thembelisha'`, and `'template_newsletter'` with your actual Service and Template IDs.

```javascript
// Example of updated code:
emailjs.init("o6orZMXCf5Et4IB-f"); // Your Public Key

emailjs.sendForm('service_p6yfcxp', 'template_11bb4h5', this)
// and
emailjs.sendForm('service_p6yfcxp', 'template_newsletter', this)
```

## Step 6: Test the Form
1. Open your website.
2. Go to the Contact page.
3. Fill out the form and click **Submit**.
4. Check your email to confirm you received the message!
