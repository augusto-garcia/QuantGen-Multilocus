---
title: Quantitative Genetics
subtitle: Decomposition of Genotypic Value
author: Antonio Augusto F Garcia
mode : selfcontained
framework: revealjs
widgets : [mathjax]  # {mathjax, quiz, bootstrap}
hitheme : zenburn
revealjs:
  theme: night
  transition: linear
  center: "true"
url: {lib: "."}
bootstrap:
  theme: amelia
---

# Quantitative Genetics

## Genetic Variation for Multilocus Traits

<small>
Instructor: [A Augusto F Garcia](http://about.me/augusto.garcia)
/ [Statistical Genetics Lab](http://statgen.esalq.usp.br) </small>

<small>Department of Genetics, Luiz de Queiroz College of Agriculture,
University of São Paulo (Brazil)</small>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

*** =pnotes

Some notes on the first slide

---

# Content

### Epistasis
### Least Squares Model
### Effect of Linkage Disequilibrium on the Genetic Variance

---

# Epistasis

- Epistasis describes the nonadditivity of effects between loci
- The model needs to be expanded. For two loci, $A$ and $B$, with two
  alleles each ($A_i$ and $A_j$; $B_k$ and $B_l$):
  $$G_{ijkl}=\mu_G+(\alpha_i+\alpha_j+\delta_{ij})+(\alpha_k+\alpha_l+\delta_{kl})+\epsilon_{ijkl}$$
- $\epsilon_{ijkl}$ are for _interactions between loci_

---

### Epistasis

- It is easy to see that with only two loci, there three possibilities
  for interactions
  - additive $\times$ additive, $\alpha\alpha$
  - additive $\times$ dominance, $\alpha\delta$
  - dominance $\times$ dominance, $\delta\delta$
- With three loci:
  - $\alpha\alpha\alpha$
  - $\alpha\alpha\delta$
  - $\alpha\delta\delta$
  - $\delta\delta\delta$


---


# A Least Squares Model

- Remember that the additive effect of an allele is equal to the
  deviation of members of the population with the allele from the
  population mean
- Thus, for allele $A_i$
  $$\alpha_i=G_{i...}-\mu_G$$
- $G_{i...}$ is the mean of individuals with allele $i$ (without
  regard to the others)
- The same is true for $j$, $k$ and $l$
- For each loci, the weighted mean (by frequencies) of effects is zero

---

## Dominance

- Deviations
  $$\delta_{ij}=G_{ij..}-\mu_G-\alpha_i-\alpha_j$$
  $$\delta_{kl}=G_{..kl}-\mu_G-\alpha_k-\alpha_l$$

---

## Epistasis

- Model fit is done sequentially and epistasis is modeled as deviations

$$(\alpha\alpha)_{ik}=G_{i.k.}-\mu_G-\alpha_{i}\alpha_{k}$$

$$(\alpha\delta)_{ikl}=G_{i.kl}-\mu_G-\alpha_i-\alpha_k-\alpha_l-\delta_{kl}-(\alpha\alpha)_{ik}-(\alpha\alpha)_{il}$$

$$(\delta\delta)_{ijkl}=G_{ijkl}-\mu_G-\alpha_i-\alpha_j-\alpha_k-\alpha_l-\delta_{ij}-\delta_{kl}$$
$$\phantom{AA}-(\alpha\alpha)_{ik}-(\alpha\alpha)_{il}-(\alpha\alpha)_{jk}-(\alpha\alpha)_{jl}$$
$$\phantom{AAA}-(\alpha\delta)_{ikl}-(\alpha\delta)_{jkl}-(\alpha\delta)_{ijk}-(\alpha\delta)_{ijl}$$

---

## Epistasis

- Under random mating, variance decomposition can be done as follows:

$$\sigma^2_G=\sigma^2_A+\sigma^2_D+\sigma^2_{AA}+\sigma^2_{AD}+\sigma^2_{DD}+...$$

- Remember that with more than 2 loci we can have high order interactions!
- Epistatic interactions can inflate the additive and/or dominance
  components of genetic variance

---

# Linkage Disequilibrium

- Disequilibrium (for two non-alleles)
  $$D_{A_iB_j}=P_{A_iB_j}-p_{A_i}p_{B_j}$$
- $D$ is the **covariance** of the frequencies of the non-alleles
  $A_i$ and $B_j$ in the same gamete
- Effects such as linkage, selection, founder effects, migration,
  assortative mating, can cause the presence of $D$

---

## Consequence for Variance Components

- For $n$ loci
$$\sigma^2_A=2\sum_{i=1}^n \alpha_i^2p_iq_i + 2\sum_{i=1}^{n}\sum_{j \neq i}^n \alpha_i\alpha_jD_{ij}$$
$$\phantom{AAAA}\sigma^2_D=4\sum_{i=1}^n (a_ik_ip_iq_i)^2 + 4\sum_{i=1}^{n}\sum_{j \neq i}^n a_ia_jk_ik_jD_{ij}^2$$
- Notice that $\sigma^2_A$ is a sum of variances plus twice the
  covariances
- $D$ can be positive or negative


--- ds:indigo


# Homework

  - Read Chapter 5 of Lynch and Walsh Book
