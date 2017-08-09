module App.Config where

type Config =
  { title :: String
  , contract :: String
  , public_path :: String
  }

foreign import config :: Config
