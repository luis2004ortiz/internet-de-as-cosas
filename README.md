# Análisis de Variables Eléctricas mediante MATLAB Online

## Descripción General
Esta sección del proyecto IoT se enfoca en el análisis de datos eléctricos utilizando MATLAB Online integrado con ThingSpeak.

Los datos fueron obtenidos mediante un sistema de monitoreo basado en ESP32 y un sensor PZEM-004T, encargado de medir variables eléctricas en tiempo real.

Una vez almacenados en ThingSpeak, MATLAB Online fue utilizado para procesar, analizar e interpretar los datos recolectados.

---

## Problema que Resuelve
La visualización de datos en tiempo real no siempre permite detectar patrones o anomalías.

MATLAB Online permite:
- Calcular estadísticas
- Detectar anomalías
- Analizar tendencias
- Comparar variables eléctricas

---

## Objetivos

### Objetivo General
Analizar variables eléctricas almacenadas en ThingSpeak mediante MATLAB Online.

### Objetivos Específicos
- Obtener promedios de las variables
- Calcular máximos y mínimos
- Analizar tendencias con polyfit
- Detectar anomalías con diff

---

## Variables Analizadas

| Field | Variable |
|------|----------|
| 1 | Voltaje |
| 2 | Corriente |
| 3 | Energía |
| 4 | Potencia |
| 5 | Frecuencia |
| 6 | Factor de Potencia |

---

## Metodología de Análisis

El análisis de datos en MATLAB Online fue dividido en 4 etapas principales:

### Tema 1: Estadística Descriptiva
En esta etapa se calcularon:
- Promedio de cada variable
- Valor máximo
- Valor mínimo

Se utilizaron funciones de MATLAB como:
```matlab
mean()
max()
min()
```

### Tema 2: Comparación entre Variables
Se realizó una comparación entre:
- Voltaje
- Potencia

Esto permitió observar cómo cambios en el voltaje afectan el comportamiento de la potencia.

### Tema 3: Análisis de Tendencias
Para calcular tendencias se utilizó la función:

```matlab
polyfit()
```

Esta función permitió calcular la pendiente de crecimiento de cada variable y determinar si su comportamiento era:
- Ascendente
- Descendente
- Estable

### Tema 4: Detección de Anomalías
Para detectar cambios bruscos se utilizó:

```matlab
diff()
```

Esta función permitió identificar saltos repentinos en las mediciones, como variaciones bruscas de voltaje.

---

## Scripts MATLAB Utilizados

Durante el proyecto se desarrollaron scripts en MATLAB para analizar las seis variables eléctricas.

Funciones principales utilizadas:

- thingSpeakRead()
- mean()
- max()
- min()
- polyfit()
- diff()

Ejemplo de script para análisis de voltaje:

```matlab
readChannelID = 3410710;
voltaje = thingSpeakRead(readChannelID,'Fields',1);

promedio = mean(voltaje);
maximo = max(voltaje);
minimo = min(voltaje);

disp(promedio)
disp(maximo)
disp(minimo)
```
