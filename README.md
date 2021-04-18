Cloned from Helpy: A Modern Helpdesk Platform
====================================

Helpy is a modern help desk platform written in Ruby on Rails and released under the MIT license.  The goal of Helpy is to power your support email and ticketing, integrate seamlessly with your app, and run an amazing customer helpcenter.

[![Build Status](https://img.shields.io/travis/helpyio/helpy/master.svg)](https://travis-ci.org/helpyio/helpy) [![Code Climate](https://codeclimate.com/github/helpyio/helpy/badges/gpa.svg)](https://codeclimate.com/github/helpyio/helpy)

![](https://helpy.io/images/github-main-image.png)


Sponsor/Support Helpy
========

Helpy is licensed under the MIT license, and is an open-core project. This means that the core functionality is 100% open source and fully hackable or even re-sellable under the MIT license.  See the features comparison below to understand what is included.

Helpy is a large system and cannot exist purely as a hobby project. If you use it in a money generating capacity, it makes good sense to support the project financially or by becoming an official sponsor or supporter.

https://www.patreon.com/helpyio

Open Source Features
========

Helpy is an integrated support solution- combining and leveraging synergies between support ticketing, Knowledgebase and a public community.  Each feature is optional however, and can be easily disabled.

- **Multichannel ticketing:** Integrated with inbound email via Sendgrid, Mandrill, Mailgun, etc.
- **Knowledgebase:** Full text searchable and SEO optimized to help users answer questions before they contact you.
- **Mobile-friendly:** Support requests come at all times, and Helpy works on all devices out of the box so you can delight customers with prompt answers, from anywhere and at anytime!
- **Community Support Forums:** Customers and Agents can both answer questions in a publicly accessible forum, and vote both threads and replies up or down accordingly.
- **Embed Widget:** Helpy Includes a lightweight javascript widget that allows your users to contact you from just about anywhere.
- **Multi-lingual:** Helpy is fully multi-lingual and can provide support in multiple languages at the same time.  Currently the app includes translations for 19 languages and is easy to translate.
- **Themeable:** Customize the look and functionality of your Helpy without disturbing the underlying system that makes it all work. Helpy comes with two additional themes, and we hope to add more and get more from the community as time goes on.
- **Sends HTML email:** Responses to customers can include html, emojis and attachments.
- **Customizable:** Set colors to match your brand both on the helpcenter, and in the ticketing UI.
- **GDPR Compliant:** Comply with GDPR right to be forgotten requests by deleting users and their history, or by anonymizing them.


**Install Helpy on your Local System**

Although not required, installing locally is highly recommended and will make it easier for you to customize things like settings, colors and logos to match your site identity.  To begin, clone Helpy from the official repo to your local system:

`git clone https://github.com/helpyio/helpy.git`

**Configure Basic Settings**

There is a settings option in the admin panel to set up things like i18n, system names, colors, the embeddable widget, etc.  There is a full guide to getting set up at: [Configuring Your Helpy Settings](http://support.helpy.io/en/knowledgebase/11-Installing-Helpy/docs/22-Configuring-your-Helpy-Settings)

**Support Multiple Languages (optional)**

Helpy includes support for Multilingual help sites, and multi-language knowledgebase articles.  This page explains how to enable Helpy's international capabilities and provides an overview of what functionality this adds to Helpy: [How To Set Up A Multilingual Helpy Support Knowledgebase](http://support.helpy.io/en/knowledgebase/12-Using-Helpy/docs/9-How-to-set-up-a-multilingual-Helpy-support-knowledgebase)

**Set up your Helpy to send and receive email (optional)**

Helpy has the ability to receive email at your support email addresses and import the messages as tickets in the web interface.  Whenever you or the user replies to the email thread, Helpy captures the discussion and sends out messages accordingly. Follow the tutorial on [Setting Up Your Helpy Installation To Send And Receive Email](http://support.helpy.io/en/knowledgebase/11-Installing-Helpy/docs/14-Setting-up-your-Helpy-installation-to-send-and-receive-email) to set this up.

**Configure oAuth (optional)**

Helpy supports Omniauth login capabilities.  This means you can allow your support users to sign in with a single click via any Omniauth provider- ie. Facebook, Twitter, Gmail, or many others. Read [Setting Up Oauth For Your Helpy](https://github.com/helpyio/helpy/wiki/SSO--Configuring-OAUTH) to see how.


MY Installation
============

Helpy was designed to run on modern cloud providers, although it should work on
any linux based system.  There is a full guide to installing Helpy in the wiki: https://github.com/helpyio/helpy/wiki

MY Requirements are:

- Ruby 2.5.1
- Rails 4.2.x
- Postgres
- Passenger

TO SEE LATER
=============
Helpy leverages two external services to help out:

- an email provider like Sendgrid
- Google Analytics for stats (optional)


Testing
============
Apr 18 - first pull

License
=======

Copyright 2016-2020, Helpy.io, LLC, Scott Miller and Contributors. Helpy Core is released under the MIT open source license.  Please contribute back any enhancements you make.  Also, I would appreciate if you kept the "powered by Helpy" blurb in the footer.  This helps me keep track of how many are using Helpy.

[![Analytics](https://ga-beacon.appspot.com/UA-50151-28/helpy/readme?pixel)](https://github.com/igrigorik/ga-beacon)
