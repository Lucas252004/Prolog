# 🧠 Paradigma Lógico en SWI-Prolog

[![Prolog](https://img.shields.io/badge/Language-SWI--Prolog-red?style=for-the-badge&logo=swi-prolog&logoColor=white)](https://www.swi-prolog.org/)
[![Academic](https://img.shields.io/badge/Curso-Paradigmas_de_Programación-blue?style=for-the-badge)](#)
[![Status](https://img.shields.io/badge/Status-Completado-brightgreen?style=for-the-badge)](#)

Este repositorio reúne las soluciones a las guías de trabajos prácticos de **Programación Lógica** desarrolladas en la universidad. 

El objetivo principal es resolver problemas mediante la declaración de **hechos, reglas, unificación y backtracking**, evaluando constantemente la **reversibilidad** de los predicados y previniendo bucles infinitos en el árbol de búsqueda de Prolog.

---

## 📌 Contenido de la Guía Práctica

Los ejercicios cubren los temas centrales de la materia, divididos en las siguientes áreas:

| Módulo / Tema | Descripción y Predicados Implementados |
| :--- | :--- |
| **Motor de Búsqueda & Arboles de Resolución** | Reglas de parentesco (`padre`, `abuelo`, `ancestro`), unificación y control de consultas infinitas. |
| **Operaciones con Listas** | Uso de acoplamiento `[Cabeza Cola]` y `append/3`: `aplanar/2`, `intersección/3`, `sacarDuplicados/2`, `permutacion/2`, `reparto/3`. |
| **Instanciación y Reversibilidad** | Generadores infinitos como `desde/2`, intercalado de listas y construcción reversible. |
| **Arboles Binarios en Prolog** | Representación mediante `bin(Izq, Val, Der)` y `nil`: `inorder/2`, `aBB/1`, `aBBInsertar/3`. |
| **Técnica Generate & Test** | Generación controlada de espacio de búsqueda: `coprimos/2`, `cuadradoSemiMágico/2`, `perímetro/2` para triángulos válidos. |
| **Negación por Falla (NAF) y Cut (`!`)** | Uso de `not/1`, corte de ramas del árbol de resolución, orden de literales y predicados integradores (ej. `corteMásParejo/3`, `próximoNumPoderoso/2`). |
| **Ejercicios Integradores** | • **Grafos:** `caminoSimple/4`, `caminoHamiltoniano/2`, `esConexo/1`, `esEstrella/1`.<br>• **Árboles Generadores:** `arbol/1`, `nodosEn/2`, `arbolSinRepEn/2`. |

---

## 🛠️ Requisitos y Uso

Se requiere contar con **SWI-Prolog** instalado en el sistema.

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/Lucas252004/Prolog.git
   cd Prolog
   ```

2. **Cargar la guía de ejercicios en el entorno interactivo:**
   ```bash
   swipl p8_prog_logica.pl
   ```

3. **Ejemplos de consultas en el REPL (`?-`):**
   ```prolog
   % Consulta de reversibilidad para sublistas que suman una cantidad
   ?- parteQueSuman([1,2,3,4,5], 9, P).
   
   % Generación de cuadrados semi-mágicos de 2x2
   ?- cuadradoSemiMágico(2, Matrix).
   
   % Rutas en un grafo no orientado
   ?- caminoHamiltoniano(Grafo, Camino).
   ```

---

## 👨‍💻 Autor

Desarrollado por **Lucas** ([@Lucas252004](https://github.com/Lucas252004)).
