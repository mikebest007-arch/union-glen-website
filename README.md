# Union Glen Website - Condos Union Realty

A professional landing page for the Union Glen pre-construction townhome development in Unionville, Markham.

## What's Included

- **index.html** - Complete single-page website with:
  - Hero section with registration CTA
  - Lead capture form with buyer qualification fields
  - Features showcase (6 key selling points)
  - 7 Builders showcase section
  - Location & amenities section
  - Broker portal integration
  - Mobile-responsive design
  - Modern animations and smooth scrolling

## Quick Start

### Option 1: Deploy to Netlify (Easiest)

1. Go to [netlify.com](https://netlify.com) and sign up
2. Drag and drop the `union-glen-website` folder
3. Site is live instantly with free SSL

### Option 2: Deploy to Vercel

```bash
npm i -g vercel
vercel
```

### Option 3: Deploy to Your Hostinger VPS

1. Upload the folder to your VPS:
   ```bash
   scp -r union-glen-website user@your-vps:/var/www/
   ```

2. Install and configure Nginx:
   ```bash
   sudo apt update
   sudo apt install nginx
   ```

3. Create Nginx config `/etc/nginx/sites-available/unionglen`:
   ```nginx
   server {
       listen 80;
       server_name unionglen.condosunion.com;  # or your domain
       root /var/www/union-glen-website;
       index index.html;
       
       location / {
           try_files $uri $uri/ =404;
       }
   }
   ```

4. Enable the site:
   ```bash
   sudo ln -s /etc/nginx/sites-available/unionglen /etc/nginx/sites-enabled/
   sudo nginx -t
   sudo systemctl restart nginx
   ```

5. Add SSL with Certbot:
   ```bash
   sudo apt install certbot python3-certbot-nginx
   sudo certbot --nginx -d unionglen.condosunion.com
   ```

## Customization

### Change Colors
Edit the CSS variables at the top of `index.html`:
```css
:root {
    --gold: #C9A962;        /* Primary accent */
    --gold-light: #E5D5A8;  /* Light accent */
    --dark: #1A1A1A;        /* Dark backgrounds */
    --charcoal: #2D2D2D;    /* Secondary dark */
    --cream: #F8F6F1;       /* Light backgrounds */
}
```

### Update Contact Info
Search and replace in `index.html`:
- `+1 (647) 967-8233` → Your phone number
- `info@condosunion.com` → Your email
- `Condos Union Realty` → Your company name

### Connect Form to Backend
The form currently shows an alert. To save leads:

1. **Use a form service** (Formspree, Netlify Forms, etc.):
   ```html
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```

2. **Connect to your own backend** by updating the form action URL

3. **Use Zapier/Make** to send form data to your CRM

## Features

- ✅ Mobile-first responsive design
- ✅ SEO-optimized meta tags
- ✅ Fast loading (no external dependencies except Google Fonts)
- ✅ Accessible (WCAG compliant)
- ✅ Cross-browser compatible
- ✅ Clean, professional design
- ✅ Lead qualification form
- ✅ Broker portal integration

## Assets Needed

To complete the site, add these to the folder:

1. **Hero background image** - High-quality rendering of Union Glen
   - Add as `images/hero.jpg` and update CSS in hero section

2. **Builder logos** - Replace placeholder cards with actual logos
   - Add to `images/builders/` folder

3. **Map** - Replace placeholder with actual map
   - Embed Google Maps or add static image

4. **Favicon** - Add `favicon.ico` to root

## Domain Setup

Point your domain to the server:
- Create A record: `unionglen.condosunion.com` → Your server IP
- Or use a subdomain: `condosunion.com/unionglen`

## Marketing Integration

Add tracking codes before `</head>`:

### Google Analytics 4:
```html
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### Facebook Pixel:
```html
<!-- Meta Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window, document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
fbq('init', 'YOUR_PIXEL_ID');
fbq('track', 'PageView');
</script>
```

## Next Steps

1. ✅ Deploy the website
2. ⬜ Add your domain/SSL
3. ⬜ Connect form to email/CRM
4. ⬜ Add Google Analytics
5. ⬜ Upload actual project photos when available
6. ⬜ Set up Google Ads/Facebook Ads campaigns
7. ⬜ Create social media posts linking to site

## Support

Need help deploying? The site is ready to go live on any static host.

For Condos Union Realty Inc. - Union Glen Marketing Campaign
