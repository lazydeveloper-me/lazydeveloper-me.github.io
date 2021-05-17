---
layout: post
title:  "Python Quick Recap"
date:   2020-12-17 06:16:00 -0800
categories: python quick-recap
permalink: /python/recap
---

{{ page.title }}


# title
How to add TOC for Jekyll posts?
There are plugins for Jekyll to generate TOC but, I have stayed away from them for one reason - I want the complete control on my website.

When I was using WordPress, there was a simple plugin called TOC and it worked like charm. It also had some color schemes available for it. But when we are dealing with Jekyll, plugins are very new and can be unstable. I’m not against Jekyll plugins or something but I’m just waiting for them to be simple to use.

Now, let’s dive in and install TOC.

If you are using kramdown as your markdown processor then you can add the following lines anywhere on the post to add a TOC. Which is pretty simple if you do not want to use JavaScript on your blog

 MD



 CSS
// Adding 'Contents' headline to the TOC
#markdown-toc::before {
    content: "Contents";
    font-weight: bold;
}


// Using numbers instead of bullets for listing
#markdown-toc ul {
    list-style: decimal;
}

#markdown-toc {
    border: 1px solid #aaa;
    padding: 1.5em;
    list-style: decimal;
    display: inline-block;
}
For this to work you should be using kramdown as your markdown preprocessor. Mention this in the _congif.yml file and restart the server to make it work.

# YML
markdown: kramdown
But if this doesn’t work for you then you can follow the procedure below.

Step 1: Download necessary files
Download the zip file: jekyll-table-of-contents. Thanks to Alex Ghiculescu for this repository. Don’t forget to give a star to this repository if it works for you.

So the repository you just downloaded has a single JavaScript file toc.js which is enough for creating Table of Contents.

# Step 2: Install the script in Jekyll repository
Place the toc.js inside your repository somewhere. Maybe inside a folder called js where all your scripts are placed.

Now call this JavaScript file where you want the TOC to show up. Usually, all the posts require TOC. So you can call it in the post layout. If you want it to be shown on pages then call it on page layout. And if you want it everywhere then it is wise to call the file in the default layout.

Add this line of code in the layout file you would like the TOC to appear.

 