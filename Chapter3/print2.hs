module Print2 where

main :: IO ()
main = do
 putStrLn "Count to four for me:"
 putStr   "one, two"
 putStr   ", three, and"
 putStrLn " four!"

main2 :: IO ()
main2 = do
 putStr   "Count to four for me:"
 putStrLn "one, two"
 putStrLn ", three, and"
 putStr   " four!"

main3 :: IO ()
main3 = do
 putStrLn "Count to four for me:"
 putStrLn "one, two"
 putStr   ", three, and"
 putStrLn " four!"