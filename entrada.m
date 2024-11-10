% PROYECTO FIN DE CARRERA - Jorge L. Vega Valle
% Fichero  entrada.m

% Elige los parametros de entrada para la resolucion de
% un modelo analitico


% Cerramos la ventana anterior en donde teniamos
% la posibilidad de elegir el modelo de colas o 
% red de colas a resolver ...



cambios_en_modelo=cambios_en_modelo+1;

close(1);


% Y abrimos una ventana nueva en donde se le va a
% solicitar al usuario los parametros de entrada

figure('Units', 'normalized',...
	    'Position', [0.05 0.05 0.9 0.9],...
        'MenuBar', 'none', ...
        'name', 'Resolucion analitica: Parametros de entrada', ...
        'NumberTitle', 'off', ...
        'resize','off');
     
frame_entrada_1 = uicontrol(gcf, 'Style', 'Frame', ...
   'Units', 'normalized', ...
   'BackgroundColor', [.702 .702 .702],...
   'Position', [0.1 0.2 0.8 0.8]);     
     
frame_entrada_2 = uicontrol(gcf, 'Style', 'Frame', ...
   'Units', 'normalized', ...
   'BackgroundColor', [.6 .6 .6],...
   'Position', [0.28 0.8 0.4 0.17]);

frame_entrada_3 = uicontrol(gcf, 'Style', 'Frame', ...
    'Units', 'normalized', ...
	'BackgroundColor', [.6 .6 .6],...
    'Position', [0.25 0.23 0.46 0.5]);


if (eleccion == 9 | eleccion ==10)	%Redes de Jackson Abiertas o Cerradas
   if (eleccion == 9)  				   %Redes de Jackson Abiertas
	   text_entrada_1 = uicontrol(gcf, 'Style', 'Text', ...
 		   'String', 'Redes de Jackson Abiertas', ...
   	  	   'Units', 'normalized', ...
		   'Position', [0.3 0.9 0.36 0.05], ...
   		   'BackgroundColor', [.6 .6 .6],...
           'FontUnits', 'normalized', ...
           'FontWeight', 'bold',...
   	       'FontSize', 0.5, ...
           'HorizontalAlignment', 'Center');
   else  									%Redes de Jackson Cerradas
      text_entrada_1 = uicontrol(gcf, 'Style', 'Text', ...
 		   'String', 'Redes de Jackson Cerradas', ...
   		   'Units', 'normalized', ...
		   'Position', [0.3 0.9 0.36 0.05], ...
   		   'BackgroundColor', [.6 .6 .6],...
	       'FontUnits', 'normalized', ...
           'FontWeight', 'bold',...
   	       'FontSize', 0.5, ...
           'HorizontalAlignment', 'Center');
	end
else											%Modelo de colas del tipo M/M/...
   text_entrada_1 = uicontrol(gcf, 'Style', 'Text', ...
   	   'String', 'Parametros de entrada', ...
	   'Units', 'normalized', ...
   	   'Position', [0.3 0.9 0.36 0.05], ...
	   'BackgroundColor', [.6 .6 .6],...
       'FontUnits', 'normalized', ...
       'FontWeight', 'bold',...
   	   'FontSize', 0.5, ...
       'HorizontalAlignment', 'Center');
end


% En funcion del tipo de modelo de colas del tipo M/M/...
% se muestra un mensaje distinto.

switch eleccion
   
   case 1,
   
	text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
   	    'String', 'Modelo M/M/1', ...
   	    'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
   	    'FontSize', 0.7, ...
	    'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
	case 2,
   
   text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
      	'String', 'Modelo M/M/s', ...
     	'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
       	'FontSize', 0.7, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   case 3,
   
   text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Modelo M/M/1/K', ...
       	'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
       	'FontSize', 0.7, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   case 4,
   
   text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Modelo M/M/s/K', ...
       	'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
       	'FontSize', 0.7, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   case 5,
   
   text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Modelo M/M/1/inf/H', ...
       	'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
       	'FontSize', 0.7, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   case 6,
   
   text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Modelo M/M/s/inf/H', ...
       	'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
       	'FontSize', 0.7, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   case 7,
   
   text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Modelo M/M/s/inf/H con Y repuestos', ...
       	'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
       	'FontSize', 0.7, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   case 8,
   
   text_entrada_2 = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Modelo M/M/inf', ...
       	'Units', 'normalized', ...
		'Position', [0.3 0.82 0.36 0.03], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold',...
       	'FontSize', 0.7, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');

end        

% Redes de Jackson Abiertas

% Tenemos que saber el numero de nodos que va a tener
% la red (nodos_abiertas). Por defecto, se asume que
% este valor es igual a 1.

if (eleccion == 9) 
   text_nodos = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Numero nodos = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.55 0.20 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   popup_abiertas = uicontrol(gcf, 'Style', 'PopupMenu', ...
       'String', '1|2|3|4|5|6',...
       'Units', 'normalized',...
	   'Value', 1 , ...
   	   'Position', [0.5 0.50 0.1 0.1], ...
       'FontUnits', 'normalized', ...
   	   'FontSize', 0.2, ...
   	   'BackgroundColor', [.702 .702 .702], ...
	   'HorizontalAlignment', 'Center', ...
   	   'Callback', 'popup2');

	nodos_abiertas = 1;
   
end

% Redes de Jackson Cerradas

% Tenemos que saber el numero de nodos que va a tener
% la red (nodos_cerradas). Por defecto se asume que 
% este valor es igual a ?.

% Tambien tenemos que saber el numero de clientes que
% va a haber en la red (clientes_cerradas). Por defecto
% se asume que este valor es igual a 0.


if (eleccion == 10) 
   text_nodos = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Numero nodos = ', ...
       	'Units', 'normalized', ...
		'Position', [0.28 0.60 0.20 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   popup_cerradas_nodos = uicontrol(gcf, 'Style', 'PopupMenu', ...
    	    'String', '2|3|4|5|6',...
           	'Units', 'normalized',...
     	    'Value', 1 , ...
        	'Position', [0.5 0.55 0.1 0.1], ...
            'FontUnits', 'normalized', ...
           	'FontSize', 0.2, ...
           	'BackgroundColor', [.702 .702 .702], ...
    	    'HorizontalAlignment', 'Center', ...
           	'Callback', 'popup3');

	text_numero_clientes = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Numero clientes = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.40 0.20 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   clientes_cerradas_n = uicontrol(gcf, 'Style', 'Edit', ...
       	'Units', 'normalized',...
	    'Value', 1 , ...
       	'Position', [0.5 0.4 0.1 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
       	'BackgroundColor', [.702 .702 .702], ...
	    'HorizontalAlignment', 'Center');


   nodos_cerradas = 1;
   clientes_cerradas = 0;

   % Esta variable se encarga de aumentar en 1 el valor
   % de nodos_cerradas; lo hace en el fichero redes_cerradas.m.

   variable = 0;
   
end

% Todos los modelos del tipo M/M/... tienen como parametros
% de entrada el numero medio de llegadas al sistema por 
% unidad de tiempo (lambda) y el numero medio de clientes
% a los que se les completa el servicio por unidad de 
% tiempo (mu).

if (eleccion ~=9 & eleccion ~=10)
   text_lambda = uicontrol(gcf, 'Style', 'Text', ...
    	'String', 'Lambda = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.65 0.15 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		lambda = uicontrol(gcf, 'Style', 'Edit', ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.655 0.08 0.04], ...
            'FontUnits', 'normalized', ...
   	        'FontSize', 0.5, ...
			'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      lambda = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(lambda_n), ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.655 0.08 0.04], ...
            'FontUnits', 'normalized', ...
   	        'FontSize', 0.5, ...
			'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end

   
	text_mu = uicontrol(gcf, 'Style', 'Text', ...
        'String', 'Mu = ', ...
       	'Units', 'normalized', ...
		'Position', [0.28 0.55 0.15 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
		'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		mu = uicontrol(gcf, 'Style', 'Edit', ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.555 0.08 0.04], ...
            'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
			'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      mu = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(mu_n), ...
   	    	'Units', 'normalized', ...
			'Position', [0.45 0.555 0.08 0.04], ...
    	   	'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
			'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end
end

% Si nos encontramos en un modelo M/M/s (2), M/M/s/K (4),
% M/M/s/inf/H (6), M/M/s/inf/H con Y repuestos (7) 
% tendremos como parametro el numero de servidores (s) que
% hay en el sistema.

if (eleccion == 2 | eleccion == 4 | eleccion == 6 | eleccion == 7)
      
   text_s = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'S = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.45 0.15 0.05], ...
       	'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
        'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		s = uicontrol(gcf, 'Style', 'Edit', ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.455 0.08 0.04], ...
    	   	'FontUnits', 'normalized', ...
   	        'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      s = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(s_n), ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.455 0.08 0.04], ...
    	   	'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end
end

% Si nos encontramos en un modelo M/M/1/K (3), tendremos
% como parametro la capacidad maxima de la cola (K).

if (eleccion == 3)
   
	text_k = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'K = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.45 0.15 0.05], ...
   	    'FontUnits', 'normalized', ...
   	    'FontSize', 0.4, ...
		'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		k = uicontrol(gcf, 'Style', 'Edit', ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.455 0.08 0.04], ...
	   	    'FontUnits', 'normalized', ...
   	        'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      k = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(k_n), ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.455 0.08 0.04], ...
	   	    'FontUnits', 'normalized', ...
   	        'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end
end

% Si nos encontramos en un modelo M/M/s/K (4), tendremos
% como parametro la capacidad maxima de la cola (K).

if (eleccion == 4)
   
	text_k = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'K = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.35 0.15 0.05], ...
        'FontUnits', 'normalized', ...
   	    'FontSize', 0.4, ...
		'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		k = uicontrol(gcf, 'Style', 'Edit', ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.355 0.08 0.04], ...
            'FontUnits', 'normalized', ...
   	        'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      k = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(k_n), ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.355 0.08 0.04], ...
            'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end
end

% Si nos encontramos en un modelo M/M/1/inf/H (5), tendremos
% como parametro el tama�o de la poblacion potencial (H).

if (eleccion == 5)
   
	text_h = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'H = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.45 0.15 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
		'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		h = uicontrol(gcf, 'Style', 'Edit', ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.455 0.08 0.04], ...
            'FontUnits', 'normalized', ...
   	        'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      h = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(h_n), ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.455 0.08 0.04], ...
            'FontUnits', 'normalized', ...
        	'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end
end

% Si nos encontramos en un modelo M/M/s/inf/H (6) o 
% M/M/s/inf/H con Y repuestos (7), tendremos
% como parametro el tama�o de la poblacion potencial (H).

if (eleccion == 6 | eleccion == 7)
   
	text_h = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'H = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.35 0.15 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
		'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		h = uicontrol(gcf, 'Style', 'Edit', ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.355 0.08 0.04], ...
            'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
			'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      h = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(h_n), ...
   	    	'Units', 'normalized', ...
			'Position', [0.45 0.355 0.08 0.04], ...
            'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
			'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end
end

% Si nos encontramos en un modelo M/M/s/inf/H con Y repuestos
% (7), tendremos como parametro el numero de repuestos (Y).

if (eleccion == 7)
   
	text_y = uicontrol(gcf, 'Style', 'Text', ...
       	'String', 'Y = ', ...
   	    'Units', 'normalized', ...
		'Position', [0.28 0.25 0.15 0.05], ...
        'FontUnits', 'normalized', ...
       	'FontSize', 0.4, ...
		'BackgroundColor', [.6 .6 .6],...
        'HorizontalAlignment', 'Center');
   
   if (cambiar_parametros_mm~=1)
		y = uicontrol(gcf, 'Style', 'Edit', ...
       		'Units', 'normalized', ...
			'Position', [0.45 0.255 0.08 0.04], ...
            'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
   else
      y = uicontrol(gcf, 'Style', 'Edit', ...
            'String', num2str(y_n), ...
   		    'Units', 'normalized', ...
			'Position', [0.45 0.255 0.08 0.04], ...
            'FontUnits', 'normalized', ...
           	'FontSize', 0.5, ...
		    'BackgroundColor', [.702 .702 .702],...
            'HorizontalAlignment', 'Center');
	end
end

 
% Si se hace click en el boton llamado anterior se ejecuta
% el codigo del fichero aquas.m 

if (cambios_en_modelo==1)
	boton_entrada_ant = uicontrol(gcf, 'Style', 'Pushbutton',...
   	    'String', '<< Anterior', 'Value', 0, ...
	    'Units', 'normalized', ...
   	    'Position', [0.18 0.05 0.2 0.1], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold', ...
   	    'FontSize', 0.2, ...
        'Callback', 'resolver_analitica');
end


% Si se hace click en el boton llamado siguiente y el usuario
% quiere resolver una red de colas abierta, se ejecuta el 
% codigo del fichero redes_abiertas.m

if (eleccion == 9)    
   if (cambios_en_modelo==1)      
	   boton_entrada_sig = uicontrol(gcf, 'Style', 'Pushbutton',...
       	'String', 'Siguiente >>', 'Value', 0, ...
	    'Units', 'normalized', ...
       	'Position', [0.58 0.05 0.2 0.1], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold', ...
       	'FontSize', 0.2, ...
        'Callback', 'redes_abiertas');
	else
      boton_entrada_sig = uicontrol(gcf, 'Style', 'Pushbutton',...
       	'String', 'Siguiente >>', 'Value', 0, ...
    	'Units', 'normalized', ...
       	'Position', [0.38 0.05 0.2 0.1], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold', ...
       	'FontSize', 0.2, ...
        'Callback', 'redes_abiertas');
	end

	% La variable pasos actua como contador y sirve para controlar
	% el flujo en el fichero redes_abiertas.m

	pasos=0;

end;

% Si se hace click en el boton llamado siguiente y el usuario
% quiere resolver una red de colas cerrada, se ejecuta el 
% codigo del fichero redes_cerradas.m


if (eleccion == 10)
   if (cambios_en_modelo==1)     
	   boton_entrada_sig = uicontrol(gcf, 'Style', 'Pushbutton',...
       	'String', 'Siguiente >>', 'Value', 0, ...
       	'Units', 'normalized', ...
        'Position', [0.58 0.05 0.2 0.1], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold', ...
       	'FontSize', 0.2, ...
        'Callback', 'redes_cerradas');
   else
	   boton_entrada_sig = uicontrol(gcf, 'Style', 'Pushbutton',...
       	'String', 'Siguiente >>', 'Value', 0, ...
       	'Units', 'normalized', ...
        'Position', [0.38 0.05 0.2 0.1], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold', ...
       	'FontSize', 0.2, ...
        'Callback', 'redes_cerradas');
	end
	% La variable pasos actua como contador y sirve para controlar
	% el flujo en el fichero redes_cerradas.m

	pasos=0;

end;

% Si se hace click en el boton llamado siguiente y el usuario
% quiere resolver un modelo de colas del tipo M/M/..., se ejecuta el 
% codigo del fichero salida.m


if (eleccion ~=9 & eleccion ~=10)
   
  if(cambios_en_modelo==1)
	  boton_entrada_sig = uicontrol(gcf, 'Style', 'Pushbutton',...
       	'String', 'Siguiente >>', 'Value', 0, ...
     	'Units', 'normalized', ...
     	'Position', [0.58 0.05 0.2 0.1], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold', ...
       	'FontSize', 0.2, ...
        'Callback', 'salida');
  else
       boton_entrada_sig = uicontrol(gcf, 'Style', 'Pushbutton',...
       	'String', 'Siguiente >>', 'Value', 0, ...
     	'Units', 'normalized', ...
     	'Position', [0.38 0.05 0.2 0.1], ...
        'FontUnits', 'normalized', ...
        'FontWeight', 'bold', ...
       	'FontSize', 0.2, ...
        'Callback', 'salida');
   end
  
 end


