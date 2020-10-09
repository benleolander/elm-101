module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main = 
    Browser.sandbox { init = init, update = update, view = view }

-- Model 
type alias Model = 
    Int

init : Model
init = 
    0

-- Update
type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model = 
    case msg of 
        Increment ->
            model + 1
        Decrement ->
            model - 1

-- View
view : Model -> Html Msg
view model = 
    -- div takes two lists, one for attributes, one for child nodes
    div [] 
    [ button [ onClick Increment ] [ text "+" ]
    , div [] [ text (String.fromInt model)]
    , button [ onClick Decrement ] [ text "-" ]
    ]