# Union Glen Website - Setup Checklist

## ✅ What's Done
- [x] Complete HTML/CSS/JS single-page website
- [x] Mobile-responsive design
- [x] Google Maps embed for location
- [x] SEO meta tags & Open Graph
- [x] Favicon (emoji-based, no file needed)
- [x] Form integration ready (Formspree)
- [x] Nginx configuration
- [x] Deployment script

## 📋 Before Going Live

### 1. Form Setup (Required)
The registration form needs a backend to collect leads:

**Option A: Formspree (Easiest - Free)**
1. Go to https://formspree.io
2. Create account → New Form
3. Copy your form endpoint (e.g., `https://formspree.io/f/xnqkvpzy`)
4. In `index.html`, replace `YOUR_FORMSPREE_ENDPOINT` with your actual endpoint

**Option B: Netlify Forms (If deploying to Netlify)**
Change form tag to: `<form name="registration" netlify>`

**Option C: Custom Backend**
Point form action to your own endpoint

### 2. Domain Setup
Update these places with your actual domain:
- `index.html`: Open Graph meta tags (line ~16)
- `nginx.conf`: server_name line
- DNS: Point your domain to your server IP

### 3. Images to Add (Optional but recommended)
Create an `images/` folder and add:
- `images/hero.jpg` - High-quality rendering/photo for hero background
- `images/og-image.jpg` - 1200x630px image for social media sharing
- `images/builders/fieldgate.png` - Builder logos
- `images/builders/greenpark.png`
- `images/builders/madison.png`
- `images/builders/state.png`
- `images/builders/ado.png`
- `images/builders/metropark.png`
- `images/builders/pivot.png`

Then update the CSS in `index.html` to use the hero image:
```css
.hero {
    background: linear-gradient(135deg, rgba(26,26,26,0.85) 0%, rgba(45,45,45,0.85) 100%), 
                url('images/hero.jpg') center/cover no-repeat;
}
```

### 4. Analytics (Optional)
Add tracking codes before `</head>` in `index.html`:
- Google Analytics 4
- Facebook Pixel
- Google Tag Manager

### 5. Contact Info
Search and replace in `index.html`:
- `+1 (647) 967-8233` → Your phone
- `info@condosunion.com` → Your email
- `Condos Union Realty` → Your company name

## 🚀 Deployment Options

### Option 1: Hostinger VPS (Your Current Setup)
```bash
# Upload files to your VPS
scp -r union-glen-website/* user@your-vps:/var/www/unionglen/

# SSH into VPS and run
sudo cp nginx.conf /etc/nginx/sites-available/unionglen
sudo ln -s /etc/nginx/sites-available/unionglen /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx

# Add SSL
sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx -d yourdomain.com
```

### Option 2: Netlify (Free & Easiest)
1. Go to netlify.com
2. Drag and drop the `union-glen-website` folder
3. Site is live instantly with free SSL
4. Connect your custom domain in settings

### Option 3: Vercel (Free)
```bash
npm i -g vercel
vercel
```

## 📁 File Structure
```
union-glen-website/
├── index.html              # Main website
├── nginx.conf              # Nginx server config
├── deploy.sh               # Deployment helper script
├── SETUP.md                # This file
├── README.md               # General documentation
├── EMAIL_SEQUENCE.md       # Marketing email templates
├── SOCIAL_MEDIA_CONTENT.md # Social post ideas
└── images/                 # Create this folder
    ├── hero.jpg
    ├── og-image.jpg
    └── builders/
        ├── fieldgate.png
        ├── greenpark.png
        ├── madison.png
        ├── state.png
        ├── ado.png
        ├── metropark.png
        └── pivot.png
```

## 📝 Next Steps
1. ⬜ Set up Formspree (5 min)
2. ⬜ Update domain in config files
3. ⬜ Deploy to server
4. ⬜ Add SSL certificate
5. ⬜ Test form submission
6. ⬜ Add hero image when available
7. ⬜ Set up Google Analytics
8. ⬜ Launch marketing campaign

---

Questions? Check README.md for more details.
