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
	
	