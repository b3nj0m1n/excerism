module Bob (responseFor) where

responseFor :: String -> String
responseFor "" = "Fine. Be that way!"
responseFor "SHOUT" = "Whoa, chill out!"
responseFor "SHOUT QUESTION" = "Calm down, I know what I'm doing!"
responseFor xs = "Whatever."
