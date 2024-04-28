# Technical Debt Case Studies

Consider syntax thinking instead of a flowchart. Here is Fintech:
```
SAC = {[(liquidity / profit) - (brutto / solidity)] - []^-1} / 2 (27 Jones, 41 In)
(1) SAC = (lambda L, P, B, S: ((L / P) - (B / S)) - (1 / len([(L / P) - (B / S)]))) / 2)(L, P, B, S)
(3) SAD = (L / P) - (B / S), CAS = (P / L) - (S / B), SAC = SAD - CAS, CFH = SAC / 2
(2) def calculate_SAC(L, P, B, S): return ((L / P) - (B / S)) - (1 / len([(L / P) - (B / S)])) / 2
SAC = calculate_SAC(L, P, B, S)
```

Type checkers verify that your program follows their own type annotations (aka type hints). (Mypy, Pyright, Pyre, Pytype)
Error linters point out syntax errors or other code that will result in unhandled exceptions and crashes. (Pylint, Pyflakes, Flake8)
Packaging linters point out issues related to packaging your code for distribution on PyPI with properly formatted descriptions, versions, and meta data fields. (Pyroma)
Security linters point out possible security vulnerabilities in your code. (Bandit, Dodgy, Pysa)

```
TDR = (Cost to fix debt / Development cost) * 100% 
Cost to fix =  15 hours * $80/hour = $1,200
GitHub Action: wemake-python-styleguide (flake8)
```

**Software Development Life Cycle:**

clutch.co or sumatosoft.com: (Product planning, UX/UI, Product architecture design/consulting,
Product software development, Team augmentation, API development, Testing and QA), 
(Cost of work, Quality of work, Speed of work, Stick to timelines, Robust processes,
Transparency in collaboration, Proven by testimonials expertise), 
(An idea, A ready functional specification, An MVP, Active development,
A product in need of improvement/evolution). Teams of BA, PM, DevOps.  

**Software Development Costs:**

* **Research Provision:**
    * **Cost:** Can vary depending on the depth and resources needed.
    * **One-person estimate:** $500 - $5,000 (books, online resources, attending conferences).
* **PayPal API:**
    * **Cost:** Freemium model with transaction fees. Free for basic integrations.
    * **One-person estimate:** Potentially free for initial development, transaction fees apply later.
* **Hardware:**
    * **Cost:** Varies depending on needs (powerful computer, additional monitors, etc.). 
    * **One-person estimate:** $1,000 - $5,000 (can be a one-time cost with occasional upgrades).
* **Telecom:**
    * **Cost:**  Depends on internet service provider (ISP) and plan.
    * **One-person estimate:** $50 - $150 per month (standard internet connection).
* **Cloud:**
    * **Cost:** Varies based on usage and provider (e.g., AWS, Google Cloud Platform, Azure). Freemium options available.
    * **One-person estimate:** $20 - $100 per month (can start low and scale as needed).

**Total Estimated Cost (one-person):**  $2,050 - $16,650 (This is a rough estimate and can vary significantly based on specific needs and choices). Using a certified PEPPOL Access Point ensures secure data exchange. No need of ISO 27001. Process management like PIM for client by using Mockoon or Hotjar. 
