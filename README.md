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
