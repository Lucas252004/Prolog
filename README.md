# ⚙️ Paradigma Funcional en Haskell

[![Haskell](https://img.shields.io/badge/Language-Haskell_GHC-5e5086?style=for-the-badge&logo=haskell&logoColor=white)](https://www.haskell.org/)
[![Academic](https://img.shields.io/badge/Curso-Paradigmas_de_Programación-blue?style=for-the-badge)](#)
[![Status](https://img.shields.io/badge/Status-Completado-brightgreen?style=for-the-badge)](#)

Este repositorio contiene las soluciones de los ejercicios prácticos de **Programación Funcional** correspondientes a la materia *Paradigmas de Programación*.

El enfoque principal de las soluciones radica en la utilización rigurosa de **esquemas de recursión** (prohibiendo la recursión explícita siempre que sea posible) para promover la reusabilidad de código, el razonamiento ecuacional y el aprovechamiento del sistema de tipos y la evaluación diferida (*lazy evaluation*).

---

## 📌 Estructura y Contenidos Destacados

A continuación se resumen los módulos resueltos y los conceptos teóricos trabajados:

| Tema / Módulo | Conceptos Clave & Ejercicios |
| :--- | :--- |
| **Currificación y Tipado** | Transposición de argumentos, funciones de alto orden, `curry`, `uncurry` y evaluación parcial. |
| **Recursión Estructural sobre Listas** | Redefinición de funciones del prelude (`map`, `filter`, `foldr`, `foldl`), `mejorSegún`, `sumasParciales` y `sumaAlt`. |
| **Generación de Subconjuntos y Combinatoria** | Algoritmos combinatorios mediante evaluación diferida: `permutaciones`, `partes` (Power Set) y `sublistas`. |
| **Recursión Primitiva** | Esquema `recr` para casos donde se requiere acceder a la cola remanente de la estructura (ej. `sacarUna`). |
| **Estructuras de Datos Definidas por el Usuario** | Definición y esquemas de recursión estructural/primitiva para:<br>• **Polinomios:** `foldPoli` y evaluación.<br>• **Árboles Binarios (`AB`):** `foldAB`, `recrAB`, `esABB`, `ramas`, `espejo`.<br>• **Árboles Hoja (`AIH`):** `foldAIH`, cálculo de altura y tamaño.<br>• **RoseTree:** Árboles n-arios, cálculo de distancias y `hojas`. |
| **Evaluación Laziness & Listas Infinitas** | Listas infinitas con List Comprehensions: `pitagoricas`, `paresDeNat`, `listasQueSuman` y enumeración de listas finitas. |

---

## 🛠️ Requisitos e Instalación

Para ejecutar y probar las soluciones se recomienda contar con el compilador **GHC / GHCi**:

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/Lucas252004/Haskell.git
   cd Haskell
   ```

2. **Cargar el archivo de soluciones en el intérprete interactivo:**
   ```bash
   ghci practica1.hs
   ```

3. **Ejemplos de ejecución en GHCi:**
   ```haskell
   -- Probar plegados y funciones combinatorias
   ghci> permutaciones [1, 2, 3]
   ghci> evaluar 3 (Suma X (Cte 5))
   
   -- Probar árbol binario de búsqueda
   ghci> esABB (Bin (Bin Nil 1 Nil) 3 (Bin Nil 5 Nil))
   True
   ```

---

## 👨‍💻 Autor

Desarrollado por **Lucas** ([@Lucas252004](https://github.com/Lucas252004)).
