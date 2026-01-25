# SOFT5002: Internet of Things and High Assurance System Design
## Coursework Part B - Solution Report

### Exercise 1: Train Ticket Machine (LO1 & LO2)
#### a) Finite State Machines M, P, and X
The destination machine (M) is defined as a 5-tuple ($Q, \Sigma, \delta, q_0, F$) where:
- [cite_start]**Q**: {q0, q1, q2} [cite: 26, 30]
- [cite_start]**Σ**: {A, B, C, N, D, E} [cite: 31, 32]
- [cite_start]**q0**: Initial State [cite: 30]
- [cite_start]**F**: {q2} (Destination Confirmed) [cite: 33]



#### b) Testing (M, P, and X)
| Machine | Accepted Input | Rejected Input |
| :--- | :--- | :--- |
| **M** | B -> D (Success) | B -> A (Invalid connection) |
| **P** | O -> Pay -> Approved | Pay (No type selected) |
| **X** | A -> R -> Pay -> Approved | C -> Pay (Skipped type) |

---

### Exercise 2: FSM Minimization & Math (LO4)
#### a) Minimization Tree for Exercise 2b
[cite_start]To achieve stepwise refinement, the states are partitioned:
- [cite_start]**P0**: {q0, q1, q4, q5}, {q2, q3} 
- [cite_start]**P1**: {q0, q4}, {q1, q5}, {q2, q3} 
- [cite_start]**Final Partition**: The equivalent states are {q0, q4}, {q1, q5}, and {q2, q3}[cite: 84].

#### b) Modulo 4 Machine
[cite_start]The DFA for divisibility by 4 uses four states representing remainders {0, 1, 2, 3}[cite: 85, 86].
- [cite_start]**Regular Expression**: `(0|4|8)|([0-9]*([02468][048]|[13579][26]))` [cite: 88]

---

### Exercise 3: Intruder Alert System (LO3)
#### a) Critical Comparison: DFA vs. NFA
[cite_start]Finite State Machines are the foundation of high assurance design[cite: 90]. [cite_start]While DFAs and NFAs are computationally equivalent, DFAs are preferred for hardware implementation because they process inputs in constant time O(1)[cite: 91]. [cite_start]This determinism is vital for the Intruder Alert System to ensure predictable transitions between Armed and Alarming states[cite: 90, 104].

#### b) Yakindu Statechart & Ambiguity Resolution
[cite_start]**Ambiguity Resolution:** The specification was intentionally ambiguous regarding how to reset the alarm[cite: 105]. I resolved this by:
1. [cite_start]**Manual Reset**: Using the `button` event to silence the siren and return to `Armed`[cite: 100].
2. [cite_start]**Timer Persistence**: Implementing a self-loop on the `motion` event to reset the **30-second timer**. [cite_start]If motion is detected at 25 seconds, the countdown restarts to ensure the siren only stops after 30 seconds of total silence[cite: 103, 104].
