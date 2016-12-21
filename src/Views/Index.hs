{-# LANGUAGE OverloadedStrings #-}

module Views.Index where

import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Text

navbar :: H.Html
navbar = H.docTypeHtml $ do
  H.head $ do 
    H.title "Polyglot"
    H.link H.! A.rel "stylesheet" H.! A.href "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
  H.body $ do
    H.nav H.! A.class_ "navbar navbar-default" $ do
    H.div H.! A.class_ "container-fluid" $ do
        --  Brand and toggle get grouped for better mobile display
        H.div H.! A.class_ "navbar-header" $ do
            H.button H.! A.type_ "button" H.! A.class_ "navbar-toggle collapsed" H.! H.dataAttribute "toggle" "collapse" H.! H.dataAttribute "target" "#bs-example-navbar-collapse-1" $ do
                H.span H.! A.class_ "sr-only" $ "Toggle navigation"
                H.span H.! A.class_ "icon-bar" $ mempty
                H.span H.! A.class_ "icon-bar" $ mempty
                H.span H.! A.class_ "icon-bar" $ mempty
            H.a H.! A.class_ "navbar-brand" H.! A.href "#" $ "Brand"
        --  Collect the nav H.links, forms, and other content for toggH.ling
        H.div H.! A.class_ "collapse navbar-collapse" H.! A.id "bs-example-navbar-collapse-1" $ do
            H.ul H.! A.class_ "nav navbar-nav" $ do
                H.li H.! A.class_ "active" $ H.a H.! A.href "#" $ do
                    "Link"
                    H.span H.! A.class_ "sr-only" $ "(current)"
                H.li $ H.a H.! A.href "#" $ "Link"
                H.li H.! A.class_ "dropdown" $ do
                    H.a H.! A.href "#" H.! A.class_ "dropdown-toggle" H.! H.dataAttribute "toggle" "dropdown" $ do
                        "Dropdown"
                        H.span H.! A.class_ "caret" $ mempty
                    H.ul H.! A.class_ "dropdown-menu" $ do
                        H.li $ H.a H.! A.href "#" $ "Action"
                        H.li $ H.a H.! A.href "#" $ "Another action"
                        H.li $ H.a H.! A.href "#" $ "Something else here"
                        H.li H.! A.class_ "divider" $ mempty
                        H.li $ H.a H.! A.href "#" $ "Separated H.link"
                        H.li H.! A.class_ "divider" $ mempty
                        H.li $ H.a H.! A.href "#" $ "One more separated H.link"
            H.form H.! A.class_ "navbar-form navbar-left" $ do
                H.div H.! A.class_ "form-group" $ H.input H.! A.type_ "text" H.! A.class_ "form-control" H.! A.placeholder "Search"
                H.button H.! A.type_ "submit" H.! A.class_ "btn btn-default" $ "Submit"
            H.ul H.! A.class_ "nav navbar-nav navbar-right" $ do
                H.li $ H.a H.! A.href "#" $ "Link"
                H.li H.! A.class_ "dropdown" $ do
                    H.a H.! A.href "#" H.! A.class_ "dropdown-toggle" H.! H.dataAttribute "toggle" "dropdown" $ do
                        "Dropdown"
                        H.span H.! A.class_ "caret" $ mempty
                    H.ul H.! A.class_ "dropdown-menu" $ do
                        H.li $ H.a H.! A.href "#" $ "Action"
                        H.li $ H.a H.! A.href "#" $ "Another action"
                        H.li $ H.a H.! A.href "#" $ "Something else here"
                        H.li H.! A.class_ "divider" $ mempty
                        H.li $ H.a H.! A.href "#" $ "Separated H.link"

