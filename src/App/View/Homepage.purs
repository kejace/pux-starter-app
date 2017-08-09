module App.View.Homepage where

import Prelude ((<<<), show, (<>))
import App.Events (Event)
import App.State (State)
import Control.Bind (discard)
import Data.Function (($))
import Pux.DOM.HTML (HTML)
import Text.Smolder.HTML (a, div, h1, h2)
import Text.Smolder.HTML.Attributes (href, className)
import Text.Smolder.Markup ((!), text)

view :: State -> HTML Event
view s =
  div do
    h1 $ text "Pux"
    h2 $ text $ "Contract is: " <> show s.contract
    a ! className "guide" ! href "https://www.purescript-pux.org/" $ text "Guide"
    a ! className "github" ! href "https://github.com/alexmingoia/purescript-pux/" $ text "GitHub"
