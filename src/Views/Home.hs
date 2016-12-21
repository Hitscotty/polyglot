{-# LANGUAGE OverloadedStrings #-}

module Views.Home where

import           Data.Monoid                 (mempty)
import           Data.Text.Lazy              (toStrict)
import           Prelude                     hiding (div, head, id)
import           Text.Blaze.Html             (Html, toHtml)
import           Text.Blaze.Html5            (blockquote, em, h3, h4,footer, pre, code, strong, hr, Html, nav, a, body, button,
                                              dataAttribute, div, docTypeHtml,
                                              form, h1, h2, head, input, li,
                                              link, meta, p, script, style,
                                              title, ul, ol,  (!))
import           Text.Blaze.Html5.Attributes (lang, charset, class_, content, href,
                                              httpEquiv, id, media, name,
                                              placeholder, rel, src, type_)
import           Views.Utils                 (blaze, pet)
import           Web.Scotty                  (ActionM)

homeView :: ActionM ()
homeView = blaze $ navbar

navbar :: Html
navbar =  docTypeHtml ! lang "en" $ do
    head $ do
        meta ! charset "utf-8"
        meta ! httpEquiv "X-UA-Compatible" ! content "IE=edge"
        meta ! name "viewport" ! content "width=device-width, initial-scale=1"
        --  The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags 
        meta ! name "a self directed bootcamp" ! content ""
        meta ! name "Jonathan Portorreal" ! content ""
        link ! rel "icon" ! href "favicon.ico"
        title "Polyglot"
        --  core CSS 
        link ! href "/bootstrap/dist/css/bootstrap.min.css" ! rel "stylesheet"
        link ! href "http://getbootstrap.com/examples/blog/blog.css" ! rel "stylesheet"
        --link ! href "//css/blog.css"  ! rel "stylesheet"
        --  IE10 viewport hack for Surface/desktop Windows 8 bug 
        --  Custom styles for this template 
        --  Just for debugging purposes. Don't actually copy  2 lines! 
        -- [if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]
        --  HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries 
        -- [if lt IE 9]>
        --       <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        --       <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        --     <![endif]
    body $ do
        div ! class_ "blog-masthead" $ div ! class_ "container" $ nav ! class_ "blog-nav" $ do
            a ! class_ "blog-nav-item active" ! href "#" $ "Home"
            a ! class_ "blog-nav-item" ! href "#" $ "New features"
            a ! class_ "blog-nav-item" ! href "#" $ "Press"
            a ! class_ "blog-nav-item" ! href "#" $ "New hires"
            a ! class_ "blog-nav-item" ! href "#" $ "About"
        div ! class_ "container" $ do
            div ! class_ "blog-header" $ do
                h1 ! class_ "blog-title" $ "The Bootstrap Blog"
                p ! class_ "lead blog-description" $ "The official example template of creating a blog with Bootstrap."
            div ! class_ "row" $ do
                div ! class_ "col-sm-8 blog-main" $ do
                    div ! class_ "blog-post" $ do
                        h2 ! class_ "blog-post-title" $ "Sample blog post"
                        p ! class_ "blog-post-meta" $ do
                            "January 1, 2014 by"
                            a ! href "#" $ "Mark"
                        p "This blog post shows a few different types of content that's supported and styled with Bootstrap. Basic typography, images, and code are all supported."
                        hr
                        p $ do
                            "Cum sociis natoque penatibus et magnis"
                            a ! href "#" $ "dis parturient montes"
                            ", nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum."
                        blockquote $ p $ do
                            "Curabitur blandit tempus porttitor."
                            strong "Nullam quis risus eget urna mollis"
                            "ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit."
                        p $ do
                            "Etiam porta"
                            em "sem malesuada magna"
                            "mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur."
                        h2 "Heading"
                        p "Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros."
                        h3 "Sub-heading"
                        p "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
                        pre $ code "Example code block"
                        p "Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa."
                        h3 "Sub-heading"
                        p "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus."
                        ul $ do
                            li "Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
                            li "Donec id elit non mi porta gravida at eget metus."
                            li "Nulla vitae elit libero, a pharetra augue."
                        p "Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue."
                        ol $ do
                            li "Vestibulum id ligula porta felis euismod semper."
                            li "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus."
                            li "Maecenas sed diam eget risus varius blandit sit amet non magna."
                        p "Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis."
                    --  /.blog-post 
                    div ! class_ "blog-post" $ do
                        h2 ! class_ "blog-post-title" $ "Another blog post"
                        p ! class_ "blog-post-meta" $ do
                            "December 23, 2013 by"
                            a ! href "#" $ "Jacob"
                        p $ do
                            "Cum sociis natoque penatibus et magnis"
                            a ! href "#" $ "dis parturient montes"
                            ", nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum."
                        blockquote $ p $ do
                            "Curabitur blandit tempus porttitor."
                            strong "Nullam quis risus eget urna mollis"
                            "ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit."
                        p $ do
                            "Etiam porta"
                            em "sem malesuada magna"
                            "mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur."
                        p "Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros."
                    --  /.blog-post 
                    div ! class_ "blog-post" $ do
                        h2 ! class_ "blog-post-title" $ "New feature"
                        p ! class_ "blog-post-meta" $ do
                            "December 14, 2013 by"
                            a ! href "#" $ "Chris"
                        p "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus."
                        ul $ do
                            li "Praesent commodo cursus magna, vel scelerisque nisl consectetur et."
                            li "Donec id elit non mi porta gravida at eget metus."
                            li "Nulla vitae elit libero, a pharetra augue."
                        p $ do
                            "Etiam porta"
                            em "sem malesuada magna"
                            "mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur."
                        p "Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue."
                    --  /.blog-post 
                    nav $ ul ! class_ "pager" $ do
                        li $ a ! href "#" $ "Previous"
                        li $ a ! href "#" $ "Next"
                --  /.blog-main 
                div ! class_ "col-sm-3 col-sm-offset-1 blog-sidebar" $ do
                    div ! class_ "sidebar-module sidebar-module-inset" $ do
                        h4 "About"
                        p $ do
                            "Etiam porta"
                            em "sem malesuada magna"
                            "mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur."
                    div ! class_ "sidebar-module" $ do
                        h4 "Archives"
                        ol ! class_ "list-unstyled" $ do
                            li $ a ! href "#" $ "March 2014"
                            li $ a ! href "#" $ "February 2014"
                            li $ a ! href "#" $ "January 2014"
                            li $ a ! href "#" $ "December 2013"
                            li $ a ! href "#" $ "November 2013"
                            li $ a ! href "#" $ "October 2013"
                            li $ a ! href "#" $ "September 2013"
                            li $ a ! href "#" $ "August 2013"
                            li $ a ! href "#" $ "July 2013"
                            li $ a ! href "#" $ "June 2013"
                            li $ a ! href "#" $ "May 2013"
                            li $ a ! href "#" $ "April 2013"
                    div ! class_ "sidebar-module" $ do
                        h4 "Elsewhere"
                        ol ! class_ "list-unstyled" $ do
                            li $ a ! href "#" $ "GitHub"
                            li $ a ! href "#" $ "Twitter"
                            li $ a ! href "#" $ "Facebook"
                --  /.blog-sidebar 
            --  /.row 
        --  /.container 
        footer ! class_ "blog-footer" $ do
            p $ do
                "Blog template built for"
                a ! href "http://getbootstrap.com" $ "Bootstrap"
                "by"
                a ! href "https://twitter.com/mdo" $ "@mdo"
                "."
            p $ a ! href "#" $ "Back to top"
        --  Bootstrap core JavaScript
        --     ================================================== 
        --  Placed at the end of the document so the pages load faster 
        script ! src "https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" $ mempty
        script ! src "http://getbootstrap.com/dist/js/bootstrap.min.js" $ mempty
        --  IE10 viewport hack for Surface/desktop Windows 8 bug 