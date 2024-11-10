% PROYECTO FIN DE CARRERA - Jorge L. Vega Valle
% Fichero  cambiar_parametros_cerradas.m



close(1)

cambiar_parametros_redes_cerradas=1;

figure('Units', 'normalized',...
		  'Position', [0.05 0.05 0.9 0.9],...
          'MenuBar', 'none', ...
          'name', 'Resolucion analitica: Cambiar parametros de la red de Jackson cerrada', ...
          'NumberTitle', 'off', ...
          'resize','off');
     
frame_cambiar_parametros_1 = uicontrol(gcf, 'Style', 'Frame', ...
   'Units', 'normalized', ...
   'BackgroundColor', [.6 .6 .6],...
   'Position', [0.07 0.2 0.88 0.73]); 

frame_cambiar_parametros_2 = uicontrol(gcf, 'Style', 'Frame', ...
   'Units', 'normalized', ...
   'BackgroundColor', [.702 .702 .702],...
   'Position', [0.07 0.94 0.88 0.055]); 

text_cambiar_parametros = uicontrol(gcf, 'Style', 'Text', ...
   'String', 'Cambiar parametros de la red de Jackson cerrada', ...
  	'Units', 'normalized', ...
   'Position', [0.25 0.95 0.5 0.04], ...
  	'BackgroundColor', [.702 .702 .702],...
   'FontUnits', 'normalized', ...
   'FontSize', 0.7, ...
   'HorizontalAlignment', 'Center');


%Para cada nodo mostramos los valores existentes hasta ese momento
%(mu, s y p)
for i=1:nodos_cerradas
   
   texto_nodo='Nodo n�';
   
   texto_nodo=strcat(texto_nodo, ' ',num2str(i));
   
   text_relativo_nodo = uicontrol(gcf, 'Style', 'Text', ...
 	   'String', texto_nodo, ...
     	'Units', 'normalized', ...
	   'Position', [0.08 0.98-0.8*i/(nodos_cerradas+1) 0.10 0.05], ...
      	'BackgroundColor', [.6 .6 .6],...
	   'FontUnits', 'normalized', ...
       'FontSize', 0.5, ...
   	   'HorizontalAlignment', 'Center');
        
   
   text_mu = uicontrol(gcf, 'Style', 'Text', ...
 	   'String', 'Mu = ', ...
   	   'Units', 'normalized', ...
	   'Position', [0.2 0.98-0.8*i/(nodos_cerradas+1) 0.08 0.05], ...
     	'BackgroundColor', [.6 .6 .6],...
	  'FontUnits', 'normalized', ...
      'FontSize', 0.4, ...
   	   'HorizontalAlignment', 'Center');
   
   vector_mu_comprobar(i) = uicontrol(gcf, 'Style', 'Edit', ...
      'String', num2str(vector_mu_cerradas(i)), ...
     	'Units', 'normalized', ...
	   'Position', [0.3 0.98-0.8*i/(nodos_cerradas+1) 0.08 0.05], ...
     	'BackgroundColor', [.702 .702 .702],...
	  'FontUnits', 'normalized', ...
      'FontSize', 0.4, ...
      'HorizontalAlignment', 'Center');
   
  text_servidores = uicontrol(gcf, 'Style', 'Text', ...
 	   'String', 'Servidores = ', ...
    	'Units', 'normalized', ...
	   'Position', [0.5 0.98-0.8*i/(nodos_cerradas+1) 0.13 0.05], ...
   	  'BackgroundColor', [.6 .6 .6],...
	  'FontUnits', 'normalized', ...
      'FontSize', 0.4, ...
   	  'HorizontalAlignment', 'Center');
   
   vector_servidores_comprobar(i) = uicontrol(gcf, 'Style', 'Edit', ...
      'String', num2str(vector_servidores_cerradas(i)), ...
   	  'Units', 'normalized', ...
	   'Position', [0.65 0.98-0.8*i/(nodos_cerradas+1) 0.08 0.05], ...
   	  'BackgroundColor', [.702 .702 .702],...
	  'FontUnits', 'normalized', ...
      'FontSize', 0.4, ...
      'HorizontalAlignment', 'Center');
   
   for j=1:nodos_cerradas
      
      indice='p (';
      indice=strcat(indice,num2str(i),',',num2str(j),')');
      
      text_indice = uicontrol(gcf, 'Style', 'Text', ...
 	   'String', indice, ...
   	   'Units', 'normalized', ...
	   'Position', [0.2+0.65*(j-1)/nodos_cerradas 0.98-0.8*i/(nodos_cerradas+1)-0.06 0.05 0.05], ...
   	   'BackgroundColor', [.6 .6 .6],...
	   'FontUnits', 'normalized', ...
       'FontSize', 0.2, ...
       'HorizontalAlignment', 'Center');
   
	   matriz_prob_cerradas_comprobar(i,j) = uicontrol(gcf, 'Style', 'Edit', ...
         'String', num2str(matriz_prob_cerradas(i,j)), ...
   	    'Units', 'normalized', ...
	   'Position', [0.25+0.65*(j-1)/nodos_cerradas 0.98-0.8*i/(nodos_cerradas+1)-0.06 0.05 0.05], ...
   	    'BackgroundColor', [.702 .702 .702],...
	     'FontUnits', 'normalized', ...
        'FontSize', 0.2, ...
        'HorizontalAlignment', 'Center');

   
   end
   
      
   
end

nodo_intercambia=1;

boton_cambiar_parametros_sig = uicontrol(gcf, 'Style', 'Pushbutton',...
   'String', 'Resolver >>', 'Value', 0, ...
  	'Units', 'normalized', ...
   'Position', [0.38 0.05 0.2 0.1], ...
  	'FontUnits', 'normalized', ...
    'FontWeight', 'bold', ...
   'FontSize', 0.2, ...
   'Callback', 'resolver_cambiar_parametros_ce');
