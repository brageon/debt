# Technical Debt Case Studies

Consider syntax thinking instead of a flowchart. Here is Fintech:
```
SAC = {[(liquidity / profit) - (brutto / solidity)] - []^-1} / 2 (27 Jones, 41 In)
(1) SAC = (lambda L, P, B, S: ((L / P) - (B / S)) - (1 / len([(L / P) - (B / S)]))) / 2)(L, P, B, S)

(2) def calculate_SAC(L, P, B, S): return ((L / P) - (B / S)) - (1 / len([(L / P) - (B / S)])) / 2
SAC = calculate_SAC(L, P, B, S)

(3) SAD = (L / P) - (B / S), CAS = (P / L) - (S / B), SAC = SAD - CAS, CFH = SAC / 2
```

Type checkers verify that your program follows their own type annotations (aka type hints). (Mypy, Pyright, Pyre, Pytype)
Error linters point out syntax errors or other code that will result in unhandled exceptions and crashes. (Pylint, Pyflakes, Flake8)
Packaging linters point out issues related to packaging your code for distribution on PyPI with properly formatted descriptions, versions, and meta data fields. (Pyroma)
Security linters point out possible security vulnerabilities in your code. (Bandit, Dodgy, Pysa)

```
TDR = (Cost to fix debt / Development cost) * 100% 
Cost to fix =  15 hours * $80/hour = $1,200
```

clutch.co or sumatosoft.com: (Product planning, UX/UI, Product architecture design/consulting,
Product software development, Team augmentation, API development, Testing and QA), 
(Cost of work, Quality of work, Speed of work, Stick to timelines, Robust processes,
Transparency in collaboration, Proven by testimonials expertise), 
(An idea, A ready functional specification, An MVP, Active development,
A product in need of improvement/evolution)

The various values for *rest* are: 
```
N (Halstead Program Length) = 1840 
n (Halstead Vocabulary) = 405 
V (Program Volume) = 15937.671699900458 bits
D (Program Difficulty) = 27.17098445595855 
E (Programming Effort) = 433042.2300221658 
L (Language level) = 21.588085455317945 
I (Intelligence Content) = 586.5695343403487 
T (Programming time) = 24057.9016678981 seconds
N^ (Estimated program length) = 3397.399039140907 
L^ (Estimated language level) = 0.036803966437833714

Source: gauravkghildiyal/Halstead-Metrics (No License)
```

GitHub Action: wemake-python-styleguide (flake8) 195 errors. It has mccabe, radon, and jones complexity.
73 very hard to maintain: dict_map = {'Z': 0.3, 'J': 0.5, 'G': 0.6, 'A': 0.7, 'T': 0.9} | 69 very hard: class BaCl
wrong keyword "pass" | 18 hard: trigram = tokens[i] + ' ' + tokens[i + 1] + ' ' + tokens[i + 2] 
111 very hard function "calc". implicit enumerate() call: for i in range(1, len(words))
