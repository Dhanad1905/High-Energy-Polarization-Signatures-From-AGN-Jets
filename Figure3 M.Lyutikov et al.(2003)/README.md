# Figure 3 Reproduction — Polarization of Prompt Gamma-Ray Burst Emission

## Overview

This project reproduces Figure 3 from the paper:

**Lyutikov, M., Pariev, V. I., & Blandford, R. D. (2003)**  
*Polarization of Prompt Gamma-Ray Burst Emission: Evidence for Electromagnetically Dominated Outflow*

The simulation calculates the polarization fraction as a function of observer viewing angle for relativistically expanding magnetized outflows possessing large-scale ordered toroidal magnetic fields.

The reproduced figure demonstrates how relativistic beaming, magnetic field geometry, and observer orientation influence observable synchrotron polarization.

---

## Physics Background

The model assumes:

- Electromagnetically dominated relativistic outflow
- Thin quasi-spherical emitting shell
- Globally ordered toroidal magnetic field
- Synchrotron dominated radiation
- Optically thin emission
- Power-law relativistic electron population

The relativistic Doppler factor is:

```text
D = 1 / [Γ(1 − βμ)]
```

where:

- Γ = bulk Lorentz factor
- β = v/c
- μ = angular projection factor

The synchrotron polarization depends on:

```text
Π = (p + 1) / (p + 7/3)
```

where:

- p = particle spectral index

The observed polarization fraction is obtained through numerical integration of the relativistically transformed Stokes parameters over the emitting shell.

---

## Numerical Method

The polarization calculation involves nested angular integrations over:

- θ (polar angle)
- φ (azimuthal angle)

To improve numerical accuracy and convergence efficiency, an **adaptive quadrature refinement method** was implemented.

The integration grid is iteratively refined until the polarization fraction converges within a specified tolerance:

```text
tol = 10⁻⁴
```

The adaptive refinement significantly improves stability near regions where relativistic beaming produces sharp angular variations.

---

## Contents

This folder contains:

- `Fig3 Lyutikov 2003.ipynb`  
  Jupyter notebook containing the full numerical implementation and plotting procedure.

- `Figure 3 Lyutikov 2003.png`  
  Final reproduced figure.

---

## Libraries Used

- NumPy
- Matplotlib

Install dependencies using:

```bash
pip install numpy matplotlib
```

---

## Generated Outputs

The reproduced figure shows:

- Polarization fraction Π
- Dependence on observer viewing angle θ_ob
- Multiple Lorentz factors:
  - Γ = 10
  - Γ = 50
  - Γ = 100
- Multiple particle spectral indices:
  - p = 1
  - p = 3

The calculations demonstrate how polarization varies as the observer moves relative to the relativistic beaming cone.

---

## Scientific Motivation

Large polarization fractions observed in relativistic astrophysical outflows are difficult to explain using purely hydrodynamic shock-generated magnetic fields due to magnetic field incoherence and cancellation effects.

This model demonstrates that highly polarized synchrotron emission can naturally arise from relativistic outflows carrying large-scale ordered toroidal magnetic fields.

The reproduced figure further illustrates the role of:

- Relativistic aberration
- Doppler boosting
- Magnetic field coherence
- Viewing geometry

in shaping observable polarization signatures.

---

## Reference

Lyutikov, M., Pariev, V. I., & Blandford, R. D. (2003).  
*Polarization of Prompt Gamma-Ray Burst Emission: Evidence for Electromagnetically Dominated Outflow*  
The Astrophysical Journal.

---

## Author

Dhanad Jha

Supervisor:  
Dr. Bhargav Vaidya, IIT Indore

GitHub Repository:
https://github.com/Dhanad1905/High-Energy-Polarization-Signatures-From-AGN-Jets#high-energy-polarization-signatures-from-agn-jets
