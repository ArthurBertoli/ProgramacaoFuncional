--LISTA 3 CALCULO LAMBDA--
--1)a)a b c d--
(((a b)c)d)

--b) λq.λi.q--
 (λq.(λi.(q)))
 

 --c)λx.λy.λz.x z (y z)--
 (λx.(λy.(λz.((x z) (y z)))))



 --2) a) λs.s z λq.s q--
 λs.s z λq.s q
s ao λs, q ao λq. z livre


 --b)(λs.s z) λq.w λw.w q z s--
 (λs.s z) λq.w λw.w q z s
s ao λs, λq ao q, λw ao w. O primeiro z, primeiro w, segundo z e ultimo s livres

 --c) (λs.s) (λq.q s)--
 (λs.s) (λq.q s)
 s ao λs, q ao λq. O segundo s livre

 --d) λz.((λs.s q) (λq.q z)) λz.z z--
 λz.((λs.s q) (λq.q z)) λz.z z
 λs ao s, λq ao q, z ao λz, z z ao λz. O primeiro q livre 



 --3) a) (λz.z) (λq.q q) (λs.s a)--
 (λz.z) (λq.q q) (λs.s a)
 ((λq.q q)) (λs.s a)
 ((λs.s a) (λs.s a))
 (((λs.s a) a))
 (a a)

 --b)(λs.λq.s q q) (λa.a) b--
 (λs.λq.s q q) (λa.a) b
 (λq (λa.a) q q) b
 (λq q q) b
 (b b)
 
 --c)(λs.λq.s q q) (λx.x) c--
 (λs.λq.s q q) (λx.x) c
 (λq.(λx.x) q q) c
 (λq. q q) c
 (c c)

 --d)((λs.s s) (λq.q)) (λr.r)--
 ((λs.s s) (λq.q)) (λr.r)
 (((λq.q) (λq.q))) (λr.r)
 ((λq.q)) (λr.r)
 (λr.r)
 

 --4)a) (λx.x) 5--
 (λx.x) 5
 5

 --b)(λx.x + 10) 42--
 (λx.x + 10) 42
 (42 + 10)
 52

 --c)(λf.f (f 10)) (λx.x + 2)--
 (λf.f (f 10)) (λx.x + 2)
 ((λx.x + 2) ((λx.x + 2) 10)) 
 ((((λx.x + 2) 10) + 2))
 (((10 + 2) + 2))  
 (((12) + 2))
 14
 

 --d)(λf.f) (λx.x) 51--
 (λf.f) (λx.x) 51
 (λx.x) 51
 51


--5)
(λm.λn.λf.λx.m f (n f x)) (λc.λd.c (c d)) (λa.λb.a b)
(λn.λf.λx.(λc.λd.c (c d)) f (n f x))  (λa.λb.a b)
(λf.λx.(λc.λd.c (c d)) f ((λa.λb.a b) f x)) 
(λf.λx.(λd.f (f d)) ((λa.λb.a b) f x)) 
(λf.λx.(λd.f (f d)) ((λb.f b) x)) 
(λf.λx.(λd.f (f d)) (f x)) 
(λf.λx.(f (f (f x))))
(λf.λx.(f (f (f x))))

