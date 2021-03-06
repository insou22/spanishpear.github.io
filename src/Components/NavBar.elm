module Components.NavBar exposing (navbar)
import Msg exposing (Msg(..))

import Html exposing (Html, a, div, header, p, img, text)
import Html.Attributes exposing (class, href, id, src, target)
import Html.Events exposing (onClick)

import Page.Util exposing (resetViewport, jumpToBottomOfId)


navbar : Html Msg
navbar =
    header [ id "header" ]
        [ div [ class "nav-container" ]
            [ div [ class "nav-item-right-container" ]
                [ a [ id "home", class "nav-right-item", href "/" ] [ text "Home" ]
                , a [ id "about-button", class "nav-right-item",  href "/"] [ text "About" ]
                , a [ class "nav-right-item", href "/projects" ] [ text "Projects." ]
                , a [ class "nav-right-item", href "/blog" ] [ text "Blog." ]
                , a [ class "nav-right-item", href "/resume" ] [ text "Resume." ]
                ]
            , a [] [ img [ onClick (ScrollTo "about-headshot"), class "nav-right-item logo", src "./src/assets/images/logo.png" ] [] ]
            ]
        ]
