% Analisis de la Grafica 2 - Corriente

readChannelID = 3410710;
CorrienteFieldID = 2;
readAPIKey = '';

corriente = thingSpeakRead(readChannelID,...
    'Fields',CorrienteFieldID,...
    'NumPoints',50,...
    'ReadKey',readAPIKey);

corriente = corriente(~isnan(corriente));

promedioCorriente = mean(corriente);
maxCorriente = max(corriente);
minCorriente = min(corriente);

disp('===== ANALISIS DE CORRIENTE =====')
disp(['Promedio: ', num2str(promedioCorriente), ' A'])
disp(['Maximo: ', num2str(maxCorriente), ' A'])
disp(['Minimo: ', num2str(minCorriente), ' A'])
