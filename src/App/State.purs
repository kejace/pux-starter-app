module App.State where

import App.Config (config)
import App.Routes (Route, match)
-- import Data.Newtype (class Newtype)

type State =
  { title :: String
  , contract :: String
  , route :: Route
  , loaded :: Boolean
  }

--derive instance newtypeState :: Newtype State _

init :: String -> State
init url = { title: config.title
           , contract: config.contract
           , route: match url
           , loaded: false
           }
