# Figure 5 Reproduction — Polarization Swings in Blazars

## Overview

This project reproduces Figure 5 from the paper:

**Lyutikov, M. & Kravchenko, E. V. (2017)**  
*Polarization Swings in Blazars*

The simulation models polarization behavior in relativistic AGN jets possessing helical magnetic fields. The reproduced figure shows the variation of polarization fraction and Electric Vector Position Angle (EVPA) as functions of jet oscillation angle for different observer viewing angles and intrinsic magnetic pitch angles.

---

## Physics Background

The model assumes:

- Relativistic jet motion
- Helical magnetic field geometry
- Synchrotron dominated emission
- Relativistic aberration effects
- Doppler boosted radiation

The observer viewing angle evolves as:

```text
θ_obs = arccos(cos θ₀ · cos φ)
```

where:

- θ₀ = minimum viewing angle
- φ = jet oscillation angle

The polarization angle (EVPA) is calculated through relativistic geometrical transformations.

The polarization fraction depends on:

```text
Π ∝ cos(2ψ) sin²(θ′)
```

where:

- ψ = intrinsic magnetic pitch angle
- θ′ = observer angle in the comoving frame

---

## Contents

This folder contains:

- `figure5_reproduction.ipynb`  
  Jupyter notebook containing the complete simulation and plotting procedure.

- `output_figure5.png`  
  Final reproduced polarization figure.

- `figure5_reproduction.py`  
  Clean Python implementation of the simulation.

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

The reproduced figure contains:

### Top Panels
- Polarization fraction (Π)
- Variation for different magnetic pitch angles

### Bottom Panels
- EVPA evolution
- Normalized EVPA variation rate

The simulations are performed for:

```text
θ_ob,0 = 1/(5γ), 1/γ, 2/γ
```

with Lorentz factor:

```text
γ = 10
```

---

## Scientific Motivation

Large EVPA rotations and polarization swings are frequently observed in blazars and relativistic AGN jets. This model demonstrates that many of these behaviors can emerge naturally from relativistic geometry and helical magnetic field configurations without requiring rapid intrinsic physical changes within the jet plasma.

---

## Reference

Lyutikov, M., & Kravchenko, E. V. (2017).  
*Polarization Swings in Blazars*  
The Astrophysical Journal.

---
## Author

Dhanad Jha

GitHub Repository:
(https://github.com/Dhanad1905/High-Energy-Polarization-Signatures-From-AGN-Jets#high-energy-polarization-signatures-from-agn-jets)
