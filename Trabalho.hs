import System.IO
import Data.List

type Doc = String 
type Linha = String 
type Palavra = String 



main = do putStr "Arquivo: "
	  hFlush stdout
   	  a <- getLine
	  txt <- readFile a
	  putStr txt
          let construirIndice = (eliminaRep(agrupar(ordenar(numeraPalavras (numlinhas (lines txt))))))
	  putStr("\n"++ show construirIndice++"\n")

nl n [] = [] 
nl n (x:xs) = (n,x): nl (n + 1) xs 
numlinhas (ls) = nl 1 ls 

numeraPalavras [] = []
numeraPalavras ((a,b):xs) = map ((,)a) (words b) ++ numeraPalavras xs 

inverte [] = []
inverte ((a,b): xs) = (b,a) : inverte xs   
ordenar (ls) = (inverte(sort(inverte (ls))))

primeiro (m,b) p = m : p   
igualb  p (a,b) = p == b
agrupar [] = []  
agrupar ((a,b): xs) = (a : (foldr primeiro [] (filter (igualb b) xs)), b): agrupar ((filter (not.(igualb b)) xs))   

auxR [] = []
auxR (x:xs) = x : auxR (filter (/= x) xs)
eliminaRep [] = []
eliminaRep ((a,b): xs) = ((auxR a), b) : eliminaRep xs  

