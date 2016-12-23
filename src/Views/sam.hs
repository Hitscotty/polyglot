H.div ! class_ "container" $ H.div ! class_ "row centered-form" $ H.div ! class_ "col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4" $ H.div ! class_ "panel panel-default" $ do
    H.div ! class_ "panel-heading" $ h3 ! class_ "panel-title" $ do
        "Please sign up for Bootsnipp"
        small "It's free!"
    H.div ! class_ "panel-body" $ H.form $ do
        H.div ! class_ "row" $ do
            H.div ! class_ "col-xs-6 col-sm-6 col-md-6" $ H.div ! class_ "form-group" $ input ! type_ "text" ! name "first_name" ! A.id "first_name" ! class_ "form-control input-sm" ! placeholder "First Name"
            H.div ! class_ "col-xs-6 col-sm-6 col-md-6" $ H.div ! class_ "form-group" $ input ! type_ "text" ! name "last_name" ! A.id "last_name" ! class_ "form-control input-sm" ! placeholder "Last Name"
        H.div ! class_ "form-group" $ input ! type_ "email" ! name "email" ! A.id "email" ! class_ "form-control input-sm" ! placeholder "Email Address"
        H.div ! class_ "row" $ do
            H.div ! class_ "col-xs-6 col-sm-6 col-md-6" $ H.div ! class_ "form-group" $ input ! type_ "password" ! name "password" ! A.id "password" ! class_ "form-control input-sm" ! placeholder "Password"
            H.div ! class_ "col-xs-6 col-sm-6 col-md-6" $ H.div ! class_ "form-group" $ input ! type_ "password" ! name "password_confirmation" ! A.id "password_confirmation" ! class_ "form-control input-sm" ! placeholder "Confirm Password"
        input ! type_ "submit" ! value "Register" ! class_ "btn btn-info btn-block"

