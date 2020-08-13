# Local Static Pages

Local static pages are pages that does not comes with the moodle installation like 
(About us, Services, Contact us, and any pages that has public information of the company)

this files are built with html extension, and will be uploaded in the main site for use

# Basic template for the static page

We'll use this format for the template since the style is already defined in the main site

```html

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Imprint</title>
 <style>

                #region-main > div > div > div > div{
                    position: fixed;
                    top: 70px;
                    left: 0px;
                    width: 101.5%;
                    height: 100%;
                    background: #fff;
                }
                #region-main > div > div > div > div > div{
                    width: 100%;
                    overflow: auto;
                    height: 100%;
                }
                #region-main > div > div > div > div > div > img{
                        object-fit: cover;
                        object-position: -20px -190px;
                        position: absolute;

                        width: 100%;
                        height: 200px;

                }
                #region-main > div > div > div > div > div > div:nth-child(3){
                    margin-top: 200px;
                }
                #region-main > div > div > div > div > div > div:nth-child(2){
                position: absolute;
                z-index:2800;
                color:#FFF;
                padding: 20px;
                }
                #region-main > div > div > div > div > div > div:nth-child(2) > h1 {
                color : #fff;
                }
                #region-main > div > div > div > div > div > div:nth-child(3) > div{
                text-align:center;
                padding: 20px;
                }
                #region-main > div > div > div > div > div > div:nth-child(3) > div > h3{
                text-align:center;
                font-size : 40px;
                }
            
            </style>
</head>
<body>
<div id="static_body">
    <div>
    <section id="banner">
        <img  id="banner_img" src="https://smah.eversun.ph/pluginfile.php/1/theme_moove/headerimg/1591094280/GM10.jpg"/>
        <div id="banner_text">
        <h1>Title of the page</h1>
        <p>Subtitle.</p>
        </div>
       
    </section>
    <section id="one" class="wrapper">
        <div class="inner">
            <div class="flex flex-3">
                <article>
                    <header>
                        <!-- THIS IS WHERE YOU PUT THE TITLE / HEADER OF THE ARTICLE BETWEEN <H3> AND </H3>-->
                        <h3>HEADER OF THE PAGE</h3>
                    <p>content 1</p>
                    </br>
                    <p>content 2</p>
                </article>
               
            </div>
        </div>
</div>
</div>
</body>
</html>
```
Please take note that even though we have **title** tags in the template, the moodle uses the values wrapped in **h1** tag 
and the "class" and "id" attributes are stripped out, the same goes for the styles.

For the **styles** we simply need to pud this under  **title** so that it wont get stripped out see [Local static pages Documentation](https://moodle.org/plugins/pluginversion.php?id=11257) under **Creating static page documents**

# Uploading static page

After creating the static page you should login as admin user in the site and got to 
**Site administration** > **Site pages** > **Documents**
Click the :page_facing_up: (Document icon) > **Upload a file** and click the **Choose file** button and locate the file then click the **Upload this file**
After uploading click the **Save changes**.

# Link static page as a menu on the topbar

Go to **Site administration** > **Appearance** > **Themes** under **Custom menu items** add the link text adding "|" character and the link of th static page.
ex:
>Services|https://smah.eversun.ph/local/staticpage/view.php?page=About


Where in the **page=About** part, the _About_ is the name of the static page that you want to assign.