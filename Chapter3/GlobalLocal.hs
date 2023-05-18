module GlobalLocal where

topLevelFunction :: Integer -> Integer
topLevelFunction x = x + woot + topLevelValue
  where woot :: Integer
        woot = 10

topLevelValue :: Integer
topLevelValue = doot + 5
  where doot :: Integer
        doot = 10

-- in GHCI calling topLevelValue & topLevelFunction
-- would work, doot & woot wouldn't work. They aren't
-- in Global space, and are local!
