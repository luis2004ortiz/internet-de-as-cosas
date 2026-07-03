% Analisis de la Grafica 1 - Voltaje

readChannelID = 3410710;
VoltajeFieldID = 1;
readAPIKey = '';

voltaje = thingSpeakRead(readChannelID, ...
    'Fields', VoltajeFieldID, ...
    'NumPoints', 50, ...
    'ReadKey', readAPIKey);

voltaje = voltaje(~isnan(voltaje));

promedioVoltaje = mean(voltaje);
maxVoltaje = max(voltaje);
minVoltaje = min(voltaje);

cambios = diff(voltaje);
anomalias = cambios(abs(cambios) > 1.3);

disp('===== ANALISIS DE VOLTAJE =====')
disp(['Promedio: ', num2str(promedioVoltaje), ' V'])
disp(['Maximo: ', num2str(maxVoltaje), ' V'])
disp(['Minimo: ', num2str(minVoltaje), ' V'])

if isempty(anomalias)
    disp('No se detectaron anomalías')
else
    disp('Saltos bruscos detectados:')
    disp(anomalias)
end
