import 'package:diagnostico_de_enfermedades/logic/arbol.dart';
import 'package:diagnostico_de_enfermedades/models/enfermedad.dart';
import 'package:diagnostico_de_enfermedades/models/enfermedad_sintoma.dart';
import 'package:diagnostico_de_enfermedades/models/sintoma.dart';

class Datos {
  // Constantes de Enfermedades
  static int _CHIKUNGUNYA = 1;
  static int _VIRUS_ZIKA = 2;
  static int _DENGUE_HEMORRAGICO = 3; // DENGUE HEMORRÁGICO
  static int _RESFRIO = 4;
  static int _INFLUENZA = 5;
  static int _GRIPE = 6;
  static int _HEPATITIS = 7;
  static int _MAYARO = 8;
  static int _CONJUNTIVITIS = 9;
  static int _CONJUNTIVITIS_VIRAL = 10;
  static int _CONJUNTIVITIS_BACTERIANA = 11;
  static int _CONJUNTIVITIS_ALERGICA = 12; // CONJUNTIVITIS ALÉRGICA
  static int _CONJUNTIVITIS_POR_IRRITANTES = 13;
  static int _DIABETES = 14;
  static int _NEUMONIA = 15; // NEUMONÍA
  static int _FIEBRE_AMARILLA_AGUDA = 16; // FIEBRE AMARILLA AGÚDA
  static int _FIEBRE_AMARILLA_FASE_TOXICA = 17; // FIEBRE AMARILLA FASE TÓXICA
  static int _INFECCION_ESTOMACAL = 18; // INFECCIÓN ESTOMACAL
  static int _VIH_SIDA = 19;
  static int _CHAGAS = 20;
  static int _VIRUELA = 21;
  static int _HEMORROIDE_EXTERNAS = 22;
  static int _HIGADO_GRASO = 23; // HÍGADO GRASO = ;
  static int _BICHOS_EN_EL_ESTOMAGO = 24; // BICHOS EN EL ESTÓMAGO
  static int _MALARIA = 25;
  static int _OSTEOPOROSIS = 26;
  static int _PANCREATITIS_AGUDA = 27; // PANCREATITIS AGÚDA
  static int _PANCREATITIS_CRONICA = 28; // PANCREATITIS CRÓNICA
  static int _SIFILIS_ETAPA_PRIMARIA = 29;
  static int _SIFILIS_ETAPA_SECUNDARIA = 30;
  static int _SIFILIS_ETAPA_TERCIARIA = 31;
  static int _HERPES_GENITAL = 32;
  static int _PAPERA = 33;
  static int _TUBERCULOSIS = 34;
  static int _COVID = 35;
  static int _RABIA = 36;
  static int _OMICRON = 37;
  static int _DELTA = 38;
  
  // Constantes de Sintomas
  static int _FIEBRE = 1;
  static int _SARPULLIDO = 2;
  static int _DOLOR_DE_CABEZA = 3;
  static int _DOLOR_DE_GARGANTA = 4;
  static int _DOLOR_MUSCULAR = 5;
  static int _DOLOR_ARTICULAR = 6;
  static int _DOLOR_DE_PECHO = 7;
  static int _COLICOS = 8;
  static int _DOLOR_ABDOMINAL = 9;
  static int _FATIGA_O_CANSANCIO	= 10;
  static int _ESTORNUDO	= 11;
  static int _SECRECION_MUCOSA	= 12;
  static int _sRESFRIO	= 13;
  static int _TOS	= 14;
  static int _FLEMAS	= 15;
  static int _DOLOR_RETROOCULAR	= 16;
  static int _COSTRAS_EN_PARPADOS_O_PESTANHAS_DE_LOS_OJOS	= 17;
  static int _OJOS_ROJOS	= 18;
  static int _SECRECION_OCULAR	= 19;
  static int _MOLESTIA_OCULAR	= 20;
  static int _ESCALOFRIOS	= 21;
  static int _VOMITOS	= 22;
  static int _MAREO	= 23;
  static int _DESMAYOS	= 24;
  static int _NAUSEAS	= 25;
  static int _ANOREXIA	= 26;
  static int _FOTOFOBIA	= 27;
  static int _SANGRADO_NASAL	= 28;
  static int _SANGRADO_DE_ENCIAS	= 29;
  static int _SANGRADO_INTERNO	= 30;
  static int _SANGRE_EN_VOMITO	= 31;
  static int _SANGRE_EN_HECES	= 32;
  static int _CONGESTION_NASAL	= 33;
  static int _HECES_AMARILLENTAS	= 34;
  static int _ORINA_OSCURA	= 35;
  static int _LEUCOPENIA	= 36;
  static int _PLAQUETOPENIA	= 37;
  static int _DIARREA	= 38;
  static int _INFECCION_DE_OIDO_A_VECES	= 39;
  static int _PICAZON_EN_LOS_OJOS	= 40;
  static int _INFLAMACION_EN_LOS_OJOS	= 41;
  static int _SED_FRECUENTE	= 42;
  static int _GANAS_FRECUENTES_DE_ORINAR	= 43;
  static int _AUMENTO_DE_APETITO	= 44;
  static int _VISION_BORROSA	= 45;
  static int _DOLOR_AL_RESPIRAR_ZONA_DE_LOS_PULMONES	= 46;
  static int _PERDIDA_DE_APETITO	= 47;
  static int _LLAGAS_EN_LA_BOCA	= 48;
  static int _PERDIDA_DE_PESO	= 49;
  static int _ESTRENHIMIENTO	= 50;
  static int _PICASON_ZONA_ANAL	= 51;
  static int _DESORIENTACION_MAYORES_DE_65_ANHOS	= 52;
  static int _DOLOR_O_MOLESTIA_ZONA_ANAL	= 53;
  static int _HINCHAZON_ZONA_ANAL	= 54;
  static int _SANGRADO_ZONA_ANAL	= 55;
  static int _CARA_ROJA	= 56;
  static int _LENGUA_ROJA	= 57;
  static int _PIEL_AMARILLA	= 58;
  static int _OJOS_AMARILLOS	= 59;
  static int _DISMINUCION_EN_LA_ORINA	= 60;
  static int _MALESTAR_EN_TODO_EL_CUERPO	= 61;
  static int _HINCHAZON_ABDOMINAL	= 62;
  static int _RESPIRACION_RAPIDA	= 63;
  static int _DIFICULTAD_PARA_RESPIRAR	= 64;
  static int _SUDORES	= 65;
  static int _AMPOLLAS_ZONA_GENITAL	= 66;
  static int _DOLOR_O_COMEZON_ZONA_GENITAL	= 67;
  static int _FRECUENCIA_CARDIACA_ACELERADA	= 68;
  static int _COSTRAS	= 69;
  static int _ULCERAS	= 70;
  static int _PERDIDA_DE_CABELLO	= 71;
  static int _UNA_ERUPCION_CUTANEA	= 72;
  static int _ULCERAS_LLAMADAS_PARCHES_MUCOSO	= 73;
  static int _HECES_ACEITOSAS_Y_CON_UN_OLOR_FETIDO	= 74;
  static int _PULSOS_ACELERADOS	= 75;
  static int _PERDIDA_DE_ESTATURA_CON_EL_TIEMPO	= 76;
  static int _DOLOR_DE_ESPALDA	= 77;
  static int _FRACTURA_DE_HUESOS_FACILMENTE	= 78;
  static int _PERDIDA_OLFATO	= 79;
  static int _PERDIDA_GUSTO	= 80;
  static int _BABEO	= 81;
  static int _CONVULSIONES	= 82;
  static int _CAMBIOS_DE_ANIMO	= 83;
  static int _PERDIDA_DE_LA_FUNCION_MUSCULAR	= 84;
  static int _MORDEDURA_DE_UN_ANIMAL	= 85;
  static int _PERDIDA_DE_SENSIBILIDAD_ZONA_DE_LA_MORDEDURA	= 86;
  
  static List<Sintoma> sintomas = [
    Sintoma(_FIEBRE, 'FIEBRE'),
    Sintoma(_SARPULLIDO, 'SARPULLIDO'),
    Sintoma(_DOLOR_DE_CABEZA, 'DOLOR DE CABEZA'),
    Sintoma(_DOLOR_DE_GARGANTA, 'DOLOR DE GARGANTA'),
    Sintoma(_DOLOR_MUSCULAR, 'DOLOR MUSCULAR'),
    Sintoma(_DOLOR_ARTICULAR, 'DOLOR ARTICULAR'),
    Sintoma(_DOLOR_DE_PECHO, 'DOLOR DE PECHO'),
    Sintoma(_COLICOS, 'CÓLICOS'),
    Sintoma(_DOLOR_ABDOMINAL, 'DOLOR ABDOMINAL'),
    Sintoma(_FATIGA_O_CANSANCIO, 'FATIGA O CANSANCIO'), //=23
    Sintoma(_ESTORNUDO, 'ESTORNUDO'),
    Sintoma(_SECRECION_MUCOSA, 'SECRECIÓN MUCOSA'),
    Sintoma(_sRESFRIO, 'RESFRIO'),
    Sintoma(_TOS, 'TOS'),
    Sintoma(_FLEMAS, 'FLEMAS'),
    Sintoma(_DOLOR_RETROOCULAR, 'DOLOR RETROOCULAR'),
    Sintoma(_COSTRAS_EN_PARPADOS_O_PESTANHAS_DE_LOS_OJOS, 'COSTRAS EN PARPADOS O PESTAÑAS DE LOS OJOS'),
    Sintoma(_OJOS_ROJOS, 'OJOS ROJOS'),
    Sintoma(_SECRECION_OCULAR, 'SECRECION OCULAR'),
    Sintoma(_MOLESTIA_OCULAR, 'MOLESTIA OCULAR'),
    Sintoma(_ESCALOFRIOS, 'ESCALOFRIOS'),
    Sintoma(_VOMITOS, 'VOMITOS'),
    Sintoma(_MAREO, 'MAREO'),
    Sintoma(_DESMAYOS, 'DESMAYOS'),
    Sintoma(_NAUSEAS, 'NAUSEAS'),
    Sintoma(_ANOREXIA, 'ANOREXIA'),
    Sintoma(_FOTOFOBIA, 'FOTOFOBIA'),
    Sintoma(_SANGRADO_NASAL, 'SANGRADO NASAL'),
    Sintoma(_SANGRADO_DE_ENCIAS, 'SANGRADO DE ENCIAS'),
    Sintoma(_SANGRADO_INTERNO, 'SANGRADO INTERNO'),
    Sintoma(_SANGRE_EN_VOMITO, 'SANGRE EN VOMITO'),
    Sintoma(_SANGRE_EN_HECES, 'SANGRE EN HECES'),
    Sintoma(_CONGESTION_NASAL, 'CONGESTION NASAL'),
    Sintoma(_HECES_AMARILLENTAS, 'HECES AMARILLENTAS'),
    Sintoma(_ORINA_OSCURA, 'ORINA OSCURA'),
    Sintoma(_LEUCOPENIA, 'LEUCOPENIA'),
    Sintoma(_PLAQUETOPENIA, 'PLAQUETOPENIA'),
    Sintoma(_DIARREA, 'DIARREA'),
    Sintoma(_INFECCION_DE_OIDO_A_VECES, 'INFECCION DE OIDO (A VECES)'),
    Sintoma(_PICAZON_EN_LOS_OJOS, 'PICAZÓN EN LOS OJOS'),
    Sintoma(_INFLAMACION_EN_LOS_OJOS, 'INFLAMACION EN LOS OJOS'),
    Sintoma(_SED_FRECUENTE, 'SED FRECUENTE'),
    Sintoma(_GANAS_FRECUENTES_DE_ORINAR, 'GANAS FRECUENTES DE ORINAR'),
    Sintoma(_AUMENTO_DE_APETITO, 'AUMENTO DE APETITO'),
    Sintoma(_VISION_BORROSA, 'VISIÓN BORROSA'),
    Sintoma(_DOLOR_AL_RESPIRAR_ZONA_DE_LOS_PULMONES, 'DOLOR AL RESPIRAR (ZONA DE LOS PULMONES)'),
    Sintoma(_PERDIDA_DE_APETITO, 'PERDIDA DE APETITO'),
    Sintoma(_LLAGAS_EN_LA_BOCA, 'LLAGAS EN LA BOCA'),
    Sintoma(_PERDIDA_DE_PESO, 'PERDIDA DE PESO'),
    Sintoma(_ESTRENHIMIENTO, 'ESTREÑIMIENTO'),
    Sintoma(_PICASON_ZONA_ANAL, 'PICASON (ZONA ANAL)'),
    Sintoma(_DESORIENTACION_MAYORES_DE_65_ANHOS, 'DESORIENTACION MAYORES DE 65 AÑOS'),
    Sintoma(_DOLOR_O_MOLESTIA_ZONA_ANAL, 'DOLOR O MOLESTIA (ZONA ANAL)'),
    Sintoma(_HINCHAZON_ZONA_ANAL, 'HINCHAZON (ZONA ANAL)'),
    Sintoma(_SANGRADO_ZONA_ANAL, 'SANGRADO (ZONA ANAL)'),
    Sintoma(_CARA_ROJA, 'CARA ROJA'),
    Sintoma(_LENGUA_ROJA, 'LENGUA ROJA'),
    Sintoma(_PIEL_AMARILLA, 'PIEL AMARILLA'),
    Sintoma(_OJOS_AMARILLOS, 'OJOS AMARILLOS'),
    Sintoma(_DISMINUCION_EN_LA_ORINA, 'DISMINUCION EN LA ORINA'),
    Sintoma(_MALESTAR_EN_TODO_EL_CUERPO, 'MALESTAR EN TODO EL CUERPO'),
    Sintoma(_HINCHAZON_ABDOMINAL, 'HINCHAZON ABDOMINAL'),
    Sintoma(_RESPIRACION_RAPIDA, 'RESPIRACIÓN RÁPIDA'),
    Sintoma(_DIFICULTAD_PARA_RESPIRAR, 'DIFICULTAD PARA RESPIRAR'),
    Sintoma(_SUDORES, 'SUDORES'),
    Sintoma(_AMPOLLAS_ZONA_GENITAL, 'AMPOLLAS (ZONA GENITAL)'),
    Sintoma(_DOLOR_O_COMEZON_ZONA_GENITAL, 'DOLOR O COMEZÓN (ZONA GENITAL)'),
    Sintoma(_FRECUENCIA_CARDIACA_ACELERADA, 'FRECUENCIA CARDIACA ACELERADA'),
    Sintoma(_COSTRAS, 'COSTRAS'),
    Sintoma(_ULCERAS, 'ÚLCERAS'),
    Sintoma(_PERDIDA_DE_CABELLO, 'PERDIDA DE CABELLO'),
    Sintoma(_UNA_ERUPCION_CUTANEA, 'UNA ERUPCIÓN CUTÁNEA'),
    Sintoma(_ULCERAS_LLAMADAS_PARCHES_MUCOSO, 'ÚLCERAS LLAMADAS PARCHES MUCOSOS'),
    Sintoma(_HECES_ACEITOSAS_Y_CON_UN_OLOR_FETIDO, 'HECES ACEITOSAS Y CON UN OLOR FÉTIDO'),
    Sintoma(_PULSOS_ACELERADOS, 'PULSOS ACELERADOS'),
    Sintoma(_PERDIDA_DE_ESTATURA_CON_EL_TIEMPO, 'PÉRDIDA DE ESTATURA CON EL TIEMPO'),
    Sintoma(_DOLOR_DE_ESPALDA, 'DOLOR DE ESPALDA'),
    Sintoma(_FRACTURA_DE_HUESOS_FACILMENTE, 'FRACTURA DE HUESOS FACILMENTE'),
    Sintoma(_PERDIDA_OLFATO, 'PERDIDA OLFATO'),
    Sintoma(_PERDIDA_GUSTO, 'PERDIDA GUSTO'),
    Sintoma(_BABEO, 'BABEO'),
    Sintoma(_CONVULSIONES, 'CONVULSIONES'),
    Sintoma(_CAMBIOS_DE_ANIMO, 'CAMBIOS DE ANIMO'),
    Sintoma(_PERDIDA_DE_LA_FUNCION_MUSCULAR, 'PERDIDA DE LA FUNCION MUSCULAR'),
    Sintoma(_MORDEDURA_DE_UN_ANIMAL, 'MORDEDURA DE UN ANIMAL'),
    Sintoma(_PERDIDA_DE_SENSIBILIDAD_ZONA_DE_LA_MORDEDURA, 'PERDIDA DE SENSIBILIDAD (ZONA DE LA MORDEDURA)')
  ];

  static List<Enfermedad> enfermedades = [
    Enfermedad(_CHIKUNGUNYA, 'CHIKUNGUNYA'),
    Enfermedad(_VIRUS_ZIKA, 'VIRUS ZIKA'),
    Enfermedad(_DENGUE_HEMORRAGICO, 'DENGUE HEMORRÁGICO'),
    Enfermedad(_RESFRIO, 'RESFRÍO'),
    Enfermedad(_INFLUENZA, 'INFLUENZA'),
    Enfermedad(_GRIPE, 'GRIPE'),
    Enfermedad(_HEPATITIS, 'HEPATITIS'),
    Enfermedad(_MAYARO, 'MAYARO'),
    Enfermedad(_CONJUNTIVITIS, 'CONJUNTIVITIS'),
    Enfermedad(_CONJUNTIVITIS_VIRAL, 'CONJUNTIVITIS VIRAL'),
    Enfermedad(_CONJUNTIVITIS_BACTERIANA, 'CONJUNTIVITIS BACTERIANA'),
    Enfermedad(_CONJUNTIVITIS_ALERGICA, 'CONJUNTIVITIS ALÉRGICA'),
    Enfermedad(_CONJUNTIVITIS_POR_IRRITANTES, 'CONJUNTIVITIS POR IRRITANTES'),
    Enfermedad(_DIABETES, 'DIABETES'),
    Enfermedad(_NEUMONIA, 'NEUMONÍA'),
    Enfermedad(_FIEBRE_AMARILLA_AGUDA, 'FIEBRE AMARILLA AGÚDA'),
    Enfermedad(_FIEBRE_AMARILLA_FASE_TOXICA, 'FIEBRE AMARILLA FASE TÓXICA'),
    Enfermedad(_INFECCION_ESTOMACAL, 'INFECCIÓN ESTOMACAL'),
    Enfermedad(_VIH_SIDA, 'VIH SIDA'),
    Enfermedad(_CHAGAS, 'CHAGAS'),
    Enfermedad(_VIRUELA, 'VIRUELA'),
    Enfermedad(_HEMORROIDE_EXTERNAS, 'HEMORROIDE EXTERNAS'),
    Enfermedad(_HIGADO_GRASO, 'HÍGADO GRASO'),
    Enfermedad(_BICHOS_EN_EL_ESTOMAGO, 'BICHOS EN EL ESTÓMAGO'),
    Enfermedad(_MALARIA, 'MALARIA'),
    Enfermedad(_OSTEOPOROSIS, 'OSTEOPOROSIS'),
    Enfermedad(_PANCREATITIS_AGUDA, 'PANCREATITIS AGÚDA'),
    Enfermedad(_PANCREATITIS_CRONICA, 'PANCREATITIS CRÓNICA'),
    Enfermedad(_SIFILIS_ETAPA_PRIMARIA, 'SIFILIS ETAPA PRIMARIA'),
    Enfermedad(_SIFILIS_ETAPA_SECUNDARIA, 'SIFILIS ETAPA SECUNDARIA'),
    Enfermedad(_SIFILIS_ETAPA_TERCIARIA, 'SIFILIS ETAPA TERCIARIA'),
    Enfermedad(_HERPES_GENITAL, 'HERPES GENITAL'),
    Enfermedad(_PAPERA, 'PAPERA'),
    Enfermedad(_TUBERCULOSIS, 'TUBERCULOSIS'),
    Enfermedad(_COVID, 'COVID'),
    Enfermedad(_RABIA, 'RABIA'),
    Enfermedad(_OMICRON, 'OMICRON'),
    Enfermedad(_DELTA, 'DELTA')
  ];

  static List<EnfermedadSintoma> sintomas01 = [
    // 1- CHIKUNGUNYA
    EnfermedadSintoma(_CHIKUNGUNYA, _FIEBRE, 5), // 1- FIEBRE
    EnfermedadSintoma(_CHIKUNGUNYA, _SARPULLIDO, 50), // 2- SARPULLIDO
    EnfermedadSintoma(_CHIKUNGUNYA, _DOLOR_DE_CABEZA, 10), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_CHIKUNGUNYA, _DOLOR_MUSCULAR, 10), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_CHIKUNGUNYA, _DOLOR_ARTICULAR, 10), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_CHIKUNGUNYA, _FATIGA_O_CANSANCIO, 14), // 10- FATIGA O CANSANCIO												
  ];
  static List<EnfermedadSintoma> sintomas02 = [
    // 2- VIRUS ZIKA
    EnfermedadSintoma(_VIRUS_ZIKA, _FIEBRE, 5), // 1- FIEBRE                                   
    EnfermedadSintoma(_VIRUS_ZIKA, _SARPULLIDO, 20), // 2- SARPULLIDO
    EnfermedadSintoma(_VIRUS_ZIKA, _DOLOR_DE_CABEZA, 10), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_VIRUS_ZIKA, _DOLOR_ARTICULAR, 5), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_VIRUS_ZIKA, _DOLOR_ABDOMINAL, 9), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_VIRUS_ZIKA, _FATIGA_O_CANSANCIO, 10), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_VIRUS_ZIKA, _OJOS_ROJOS,40), // 18- OJOS ROJOS											
  ];
  static List<EnfermedadSintoma> sintomas03 = [
    // 3- DENGUE HEMORRÁGICO
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _FIEBRE, 1), // 1- FIEBRE
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _SARPULLIDO, 1), // 2- SARPULLIDO
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _DOLOR_DE_CABEZA, 1), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _DOLOR_ABDOMINAL, 2), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _VOMITOS, 2), // 22- VOMITOS
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _NAUSEAS, 2), // 25- NAUSEAS
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _SANGRADO_NASAL, 15), // 28- SANGRADO NASAL
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _SANGRADO_DE_ENCIAS, 15), // 29- SANGRADO DE ENCIAS
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _SANGRADO_INTERNO, 30), // 30- SANGRADO INTERNO
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _SANGRE_EN_VOMITO, 15), // 31- SANGRE EN VOMITO
    EnfermedadSintoma(_DENGUE_HEMORRAGICO, _SANGRE_EN_HECES, 15), // 32- SANGRE EN HECES							
  ];
  static List<EnfermedadSintoma> sintomas04 = [
    // 4- RESFRIO
    EnfermedadSintoma(_RESFRIO, _FIEBRE, 5), // 1- FIEBRE
    EnfermedadSintoma(_RESFRIO, _DOLOR_DE_CABEZA, 5), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_RESFRIO, _DOLOR_DE_GARGANTA, 5), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_RESFRIO, _DOLOR_MUSCULAR, 5), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_RESFRIO, _ESTORNUDO, 40), // 11- ESTORNUDO
    EnfermedadSintoma(_RESFRIO, _TOS, 10), // 14- TOS
    EnfermedadSintoma(_RESFRIO, _FLEMAS, 10), // 15- FLEMAS
    EnfermedadSintoma(_RESFRIO, _CONGESTION_NASAL, 19), // 33- CONGESTION NASAL					
  ];
  static List<EnfermedadSintoma> sintomas05 = [
    // 5- INFLUENZA
    EnfermedadSintoma(_INFLUENZA, _FIEBRE, 5), // 1- FIEBRE
    EnfermedadSintoma(_INFLUENZA, _DOLOR_DE_CABEZA, 5), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_INFLUENZA, _DOLOR_ABDOMINAL, 5), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_INFLUENZA, _TOS, 5), // 14- TOS
    EnfermedadSintoma(_INFLUENZA, _VOMITOS, 20), // 22- VOMITOS
    EnfermedadSintoma(_INFLUENZA, _NAUSEAS, 50), // 25- NAUSEAS
    EnfermedadSintoma(_INFLUENZA, _CONGESTION_NASAL, 9), // 33- CONGESTION NASAL
  ];
  static List<EnfermedadSintoma> sintomas06 = [
    // 6- GRIPE
    EnfermedadSintoma(_GRIPE, _FIEBRE, 5), // 1- FIEBRE	      
    EnfermedadSintoma(_GRIPE, _DOLOR_DE_CABEZA, 5), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_GRIPE, _DOLOR_MUSCULAR, 20), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_GRIPE, _DOLOR_ARTICULAR, 9), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_GRIPE, _FLEMAS, 60), // 15- FLEMAS													
  ];
  static List<EnfermedadSintoma> sintomas07 = [
    // 7- HEPATITIS
    EnfermedadSintoma(_HEPATITIS, _FIEBRE, 1), // 1- FIEBRE
    EnfermedadSintoma(_HEPATITIS, _DOLOR_ARTICULAR, 1), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_HEPATITIS, _DOLOR_ABDOMINAL, 1), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_HEPATITIS, _FATIGA_O_CANSANCIO, 2), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_HEPATITIS, _VOMITOS, 2), // 22- VOMITOS
    EnfermedadSintoma(_HEPATITIS, _NAUSEAS, 2), // 25- NAUSEAS
    EnfermedadSintoma(_HEPATITIS, _HECES_AMARILLENTAS, 40), // 34- HECES AMARILLENTAS
    EnfermedadSintoma(_HEPATITIS, _ORINA_OSCURA, 50), // 35- ORINA OSCURA	
  ];
  static List<EnfermedadSintoma> sintomas08 = [
    // 8- MAYARO
    EnfermedadSintoma(_MAYARO, _FIEBRE, 2), // 1- FIEBRE
    EnfermedadSintoma(_MAYARO, _SARPULLIDO, 2), // 2- SARPULLIDO
    EnfermedadSintoma(_MAYARO, _DOLOR_DE_CABEZA, 2), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_MAYARO, _DOLOR_DE_GARGANTA, 2), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_MAYARO, _DOLOR_MUSCULAR, 1), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_MAYARO, _DOLOR_ARTICULAR, 1), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_MAYARO, _DOLOR_ABDOMINAL, 1), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_MAYARO, _TOS, 1), // 14- TOS
    EnfermedadSintoma(_MAYARO, _DOLOR_RETROOCULAR, 1), // 16- DOLOR RETROOCULAR
    EnfermedadSintoma(_MAYARO, _ESCALOFRIOS, 1), // 21- ESCALOFRIOS
    EnfermedadSintoma(_MAYARO, _MAREO, 1), // 23- MAREO
    EnfermedadSintoma(_MAYARO, _NAUSEAS, 1), // 25- NAUSEAS
    EnfermedadSintoma(_MAYARO, _ANOREXIA, 50), // 26- ANOREXIA
    EnfermedadSintoma(_MAYARO, _FOTOFOBIA,10), // 27- FOTOFOBIA
    EnfermedadSintoma(_MAYARO, _CONGESTION_NASAL, 1), // 33- CONGESTION NASAL
    EnfermedadSintoma(_MAYARO, _LEUCOPENIA, 10), // 36- LEUCOPENIA
    EnfermedadSintoma(_MAYARO, _PLAQUETOPENIA, 10), // 37- PLAQUETOPENIA
    EnfermedadSintoma(_MAYARO, _DIARREA, 2), // 38- DIARREA
  ];
  static List<EnfermedadSintoma> sintomas09 = [
    // 9- CONJUNTIVITIS
    EnfermedadSintoma(_CONJUNTIVITIS, _FIEBRE, 1), // 1- FIEBRE
    EnfermedadSintoma(_CONJUNTIVITIS, _DOLOR_DE_CABEZA, 2), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_CONJUNTIVITIS, _SECRECION_MUCOSA, 2), // 12- SECRECION MUCOSA
    EnfermedadSintoma(_CONJUNTIVITIS, _TOS, 2), // 14- TOS
    EnfermedadSintoma(_CONJUNTIVITIS, _DOLOR_RETROOCULAR, 2), // 16- DOLOR RETROOCULAR
    EnfermedadSintoma(_CONJUNTIVITIS, _COSTRAS_EN_PARPADOS_O_PESTANHAS_DE_LOS_OJOS, 50), // 17- COSTRAS EN PARPADOS O PESTAÑAS DE LOS OJOS
    EnfermedadSintoma(_CONJUNTIVITIS, _OJOS_ROJOS, 20), // 18- OJOS ROJOS
    EnfermedadSintoma(_CONJUNTIVITIS, _SECRECION_OCULAR, 10), // 19- SECRECION OCULAR
    EnfermedadSintoma(_CONJUNTIVITIS, _MOLESTIA_OCULAR, 10), // 20- MOLESTIA OCULAR									
  ];
  static List<EnfermedadSintoma> sintomas10 = [
    // 10- CONJUNTIVITIS VIRAL
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _FIEBRE, 1), // 1- FIEBRE
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _DOLOR_DE_CABEZA, 1), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _SECRECION_MUCOSA, 15), // 12- SECRECION MUCOSA
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _sRESFRIO, 1), // 13- RESFRIO
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _TOS, 1), // 14- TOS
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _DOLOR_RETROOCULAR, 1), // 16- DOLOR RETROOCULAR
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _COSTRAS_EN_PARPADOS_O_PESTANHAS_DE_LOS_OJOS, 1), // 17- COSTRAS EN PARPADOS  O PESTAÑAS DE LOS OJOS
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _OJOS_ROJOS, 1), // 18- OJOS ROJOS
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _SECRECION_OCULAR, 60), // 19- SECRECION OCULAR
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _MOLESTIA_OCULAR, 15), // 20- MOLESTIA OCULAR
    EnfermedadSintoma(_CONJUNTIVITIS_VIRAL, _CONGESTION_NASAL, 2), // 33- CONGESTION NASAL
  ];
  static List<EnfermedadSintoma> sintomas11 = [
    // 11- CONJUNTIVITIS BACTERIANA
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _FIEBRE, 1), // 1- FIEBRE
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _DOLOR_DE_CABEZA, 1), // 3- DOLOR DE CABEZA	
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _SECRECION_MUCOSA, 1), // 12- SECRECION MUCOSA
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _sRESFRIO, 2), // 13- RESFRIO
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _TOS, 2), // 14- TOS
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _DOLOR_RETROOCULAR, 2), // 16- DOLOR RETROOCULAR
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _COSTRAS_EN_PARPADOS_O_PESTANHAS_DE_LOS_OJOS, 10), // 17- COSTRAS EN PARPADOS O PESTAÑAS DE LOS OJOS
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _OJOS_ROJOS, 50), // 18- OJOS ROJOS
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _SECRECION_OCULAR, 10), // 19- SECRECION OCULAR
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _MOLESTIA_OCULAR, 10), // 20- MOLESTIA OCULAR
    EnfermedadSintoma(_CONJUNTIVITIS_BACTERIANA, _INFECCION_DE_OIDO_A_VECES, 10), // 39- INFECCION DE OIDO (_A VECES)							
  ];
  static List<EnfermedadSintoma> sintomas12 = [
    // 12- CONJUNTIVITIS ALERGICA
    EnfermedadSintoma(_CONJUNTIVITIS_ALERGICA, _DOLOR_DE_GARGANTA, 9), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_CONJUNTIVITIS_ALERGICA, _ESTORNUDO, 10), // 11- ESTORNUDO
    EnfermedadSintoma(_CONJUNTIVITIS_ALERGICA, _OJOS_ROJOS, 15), // 18- OJOS ROJOS
    EnfermedadSintoma(_CONJUNTIVITIS_ALERGICA, _PICAZON_EN_LOS_OJOS, 15), // 40- PICAZÓN EN LOS OJOS
    EnfermedadSintoma(_CONJUNTIVITIS_ALERGICA, _INFLAMACION_EN_LOS_OJOS, 50), // 41- INFLAMACION EN LOS OJOS													
  ];
  static List<EnfermedadSintoma> sintomas13 = [
    // 13- CONJUNTIVITIS POR IRRITANTES
    EnfermedadSintoma(_CONJUNTIVITIS_POR_IRRITANTES, _SECRECION_MUCOSA, 20), // 12- SECRECION MUCOSA
    EnfermedadSintoma(_CONJUNTIVITIS_POR_IRRITANTES, _DOLOR_RETROOCULAR, 50), // 16- DOLOR RETROOCULAR
    EnfermedadSintoma(_CONJUNTIVITIS_POR_IRRITANTES, _OJOS_ROJOS, 29), // 18- OJOS ROJOS
  ];
  static List<EnfermedadSintoma> sintomas14 = [
    // 14- DIABETES
    EnfermedadSintoma(_DIABETES, _FATIGA_O_CANSANCIO, 2), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_DIABETES, _SED_FRECUENTE, 2), // 42- SED FRECUENTE
    EnfermedadSintoma(_DIABETES, _GANAS_FRECUENTES_DE_ORINAR, 5), // 43- GANAS FRECUENTES DE ORINAR
    EnfermedadSintoma(_DIABETES, _AUMENTO_DE_APETITO, 10), // 44- AUMENTO DE APETITO
    EnfermedadSintoma(_DIABETES, _VISION_BORROSA, 50), // 45- VISIÓN BORROSA
    EnfermedadSintoma(_DIABETES, _PERDIDA_DE_PESO, 30), // 49- PERDIDA DE PESO												
  ];
  static List<EnfermedadSintoma> sintomas15 = [
    // 15- NEUMONIA
    EnfermedadSintoma(_NEUMONIA, _FIEBRE, 1), // 1- FIEBRE
    EnfermedadSintoma(_NEUMONIA, _DOLOR_DE_PECHO, 30), // 7- DOLOR DE PECHO
    EnfermedadSintoma(_NEUMONIA, _FATIGA_O_CANSANCIO, 1), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_NEUMONIA, _TOS, 1), // 14- TOS
    EnfermedadSintoma(_NEUMONIA, _FLEMAS, 1), // 15- FLEMAS
    EnfermedadSintoma(_NEUMONIA, _ESCALOFRIOS, 1), // 21- ESCALOFRIOS
    EnfermedadSintoma(_NEUMONIA, _VOMITOS, 2), // 22- VOMITOS
    EnfermedadSintoma(_NEUMONIA, _NAUSEAS, 2), // 25- NAUSEAS
    EnfermedadSintoma(_NEUMONIA, _DIARREA, 5), // 38- DIARREA
    EnfermedadSintoma(_NEUMONIA, _DOLOR_AL_RESPIRAR_ZONA_DE_LOS_PULMONES, 50), // 46- DOLOR AL RESPIRAR (_ZONA DE LOS PULMONES)
    EnfermedadSintoma(_NEUMONIA, _DESORIENTACION_MAYORES_DE_65_ANHOS, 5), // 52- DESORIENTACION MAYORES DE 65 AÑOS
  ];
  static List<EnfermedadSintoma> sintomas16 = [
    // 16- FIEBRE AMARILLA AGUDA
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _FIEBRE, 60), // 1- FIEBRE
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _DOLOR_DE_CABEZA, 5), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _DOLOR_MUSCULAR, 2), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _DOLOR_ARTICULAR, 2), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _OJOS_ROJOS,1), // 18- OJOS ROJOS
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _VOMITOS, 10), // 22- VOMITOS
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _MAREO, 2), // 23- MAREO
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _NAUSEAS, 10), // 25- NAUSEAS
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _FOTOFOBIA, 2), // 27- FOTOFOBIA
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _PERDIDA_DE_APETITO, 2), // 47- PERDIDA DE APETITO
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _CARA_ROJA, 2), // 56- CARA ROJA
    EnfermedadSintoma(_FIEBRE_AMARILLA_AGUDA, _LENGUA_ROJA, 1), // 57- LENGUA ROJA
  ];
  static List<EnfermedadSintoma> sintomas17 = [
    // 17- FIEBRE AMARILLA fase toxica
    EnfermedadSintoma(_FIEBRE_AMARILLA_FASE_TOXICA, _DOLOR_ABDOMINAL, 10), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_FIEBRE_AMARILLA_FASE_TOXICA, _PIEL_AMARILLA, 30), // 58- PIEL AMARILLA
    EnfermedadSintoma(_FIEBRE_AMARILLA_FASE_TOXICA, _OJOS_AMARILLOS, 30), // 59- OJOS AMARILLOS
    EnfermedadSintoma(_FIEBRE_AMARILLA_FASE_TOXICA, _DISMINUCION_EN_LA_ORINA, 20), // 60- DISMINUCION EN LA ORINA
    EnfermedadSintoma(_FIEBRE_AMARILLA_FASE_TOXICA, _MALESTAR_EN_TODO_EL_CUERPO, 9), // 61- MALESTAR EN --TODO EL CUERPO
  ];
  static List<EnfermedadSintoma> sintomas18 = [
    // 18- INFECCION ESTOMACAL
    EnfermedadSintoma(_INFECCION_ESTOMACAL, _FIEBRE, 5), // 1- FIEBRE
    EnfermedadSintoma(_INFECCION_ESTOMACAL, _COLICOS, 5), // 8- CÓLICOS
    EnfermedadSintoma(_INFECCION_ESTOMACAL, _DOLOR_ABDOMINAL, 5), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_INFECCION_ESTOMACAL, _VOMITOS, 10), // 22- VOMITOS
    EnfermedadSintoma(_INFECCION_ESTOMACAL, _NAUSEAS, 14), // 25- NAUSEAS
    EnfermedadSintoma(_INFECCION_ESTOMACAL, _SANGRE_EN_HECES, 35), // 32- SANGRE EN HECES
    EnfermedadSintoma(_INFECCION_ESTOMACAL, _PERDIDA_DE_APETITO, 25), // 47- PERDIDA DE APETITO											
  ];
  static List<EnfermedadSintoma> sintomas19 = [
    // 19- VIH SIDA
    EnfermedadSintoma(_VIH_SIDA, _FIEBRE, 2), // 1- FIEBRE
    EnfermedadSintoma(_VIH_SIDA, _SARPULLIDO, 10), // 2- SARPULLIDO
    EnfermedadSintoma(_VIH_SIDA, _DOLOR_DE_CABEZA, 2), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_VIH_SIDA, _DOLOR_DE_GARGANTA, 4), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_VIH_SIDA, _DOLOR_MUSCULAR, 4), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_VIH_SIDA, _DOLOR_ARTICULAR, 5), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_VIH_SIDA, _DIARREA, 2), // 38- DIARREA
    EnfermedadSintoma(_VIH_SIDA, _LLAGAS_EN_LA_BOCA, 40), // 48- LLAGAS EN LA BOCA
    EnfermedadSintoma(_VIH_SIDA, _PERDIDA_DE_PESO, 30), // 49- PERDIDA DE PESO									
  ];
  static List<EnfermedadSintoma> sintomas20 = [
    // 20- CHAGAS
    EnfermedadSintoma(_CHAGAS, _DOLOR_DE_GARGANTA, 10), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_CHAGAS, _DOLOR_DE_PECHO, 10), // 7- DOLOR DE PECHO
    EnfermedadSintoma(_CHAGAS, _FATIGA_O_CANSANCIO, 20), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_CHAGAS, _MAREO, 20), // 23- MAREO
    EnfermedadSintoma(_CHAGAS, _DESMAYOS, 20), // 24- DESMAYOS
    EnfermedadSintoma(_CHAGAS, _ESTRENHIMIENTO, 19), // 50- ESTREÑIMIENTO
  ];
  static List<EnfermedadSintoma> sintomas21 = [
    // 21- VIRUELA
    EnfermedadSintoma(_VIRUELA, _FIEBRE, 4), // 1- FIEBRE
    EnfermedadSintoma(_VIRUELA, _SARPULLIDO, 15), // 2- SARPULLIDO
    EnfermedadSintoma(_VIRUELA, _DOLOR_DE_CABEZA, 10), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_VIRUELA, _DOLOR_MUSCULAR, 10), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_VIRUELA, _DOLOR_ARTICULAR, 10), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_VIRUELA, _DOLOR_DE_PECHO, 10), // 7- DOLOR DE PECHO
    EnfermedadSintoma(_VIRUELA, _DOLOR_ABDOMINAL, 10), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_VIRUELA, _FATIGA_O_CANSANCIO, 20), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_VIRUELA, _VOMITOS, 10), // 22- VOMITOS									
  ];
  static List<EnfermedadSintoma> sintomas22 = [
    // 22- HEMORROIDE EXTERNAS
    EnfermedadSintoma(_HEMORROIDE_EXTERNAS, _PICAZON_EN_LOS_OJOS, 1), // 40- PICAZÓN EN LOS OJOS
    EnfermedadSintoma(_HEMORROIDE_EXTERNAS, _PICASON_ZONA_ANAL, 50), // 51- PICASON (_ZONA ANAL)
    EnfermedadSintoma(_HEMORROIDE_EXTERNAS, _DOLOR_O_MOLESTIA_ZONA_ANAL, 20), // 53- DOLOR O MOLESTIA (_ZONA ANAL)
    EnfermedadSintoma(_HEMORROIDE_EXTERNAS, _HINCHAZON_ZONA_ANAL, 10), // 54- HINCHAZON (_ZONA ANAL)
    EnfermedadSintoma(_HEMORROIDE_EXTERNAS, _SANGRADO_ZONA_ANAL, 18), // 55- SANGRADO (_ZONA ANAL)													
  ];
  static List<EnfermedadSintoma> sintomas23 = [
    // 23- HIGADO GRASO
    EnfermedadSintoma(_HIGADO_GRASO, _DOLOR_ABDOMINAL, 15), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_HIGADO_GRASO, _HECES_AMARILLENTAS, 12), // 34- HECES AMARILLENTAS
    EnfermedadSintoma(_HIGADO_GRASO, _LENGUA_ROJA, 12), // 57- LENGUA ROJA
    EnfermedadSintoma(_HIGADO_GRASO, _PIEL_AMARILLA, 15), // 58- PIEL AMARILLA
    EnfermedadSintoma(_HIGADO_GRASO, _OJOS_AMARILLOS, 15), // 59- OJOS AMARILLOS
    EnfermedadSintoma(_HIGADO_GRASO, _HINCHAZON_ABDOMINAL, 15), // 62- HINCHAZON ABDOMINAL
    EnfermedadSintoma(_HIGADO_GRASO, _RESPIRACION_RAPIDA, 15), // 63- RESPIRACIÓN RÁPIDA											
  ];
  static List<EnfermedadSintoma> sintomas24 = [
    // 24- BICHOS EN EL ESTÓMAGO
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _DOLOR_ABDOMINAL, 5), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _FATIGA_O_CANSANCIO, 10), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _HECES_AMARILLENTAS, 18), // 34- HECES AMARILLENTAS
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _DIARREA, 14), // 38- DIARREA
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _PERDIDA_DE_APETITO, 14), // 47- PERDIDA DE APETITO
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _PERDIDA_DE_PESO, 14), // 49- PERDIDA DE PESO
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _PICASON_ZONA_ANAL, 14), // 51- PICASON (_ZONA ANAL)
    EnfermedadSintoma(_BICHOS_EN_EL_ESTOMAGO, _HINCHAZON_ABDOMINAL, 10), // 62- HINCHAZON ABDOMINAL
  ];
  static List<EnfermedadSintoma> sintomas25 = [
    // 25- MALARIA
    EnfermedadSintoma(_MALARIA, _FIEBRE, 5), // 1- FIEBRE
    EnfermedadSintoma(_MALARIA, _DOLOR_DE_CABEZA, 5), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_MALARIA, _DOLOR_MUSCULAR, 5), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_MALARIA, _DOLOR_ARTICULAR, 5), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_MALARIA, _DOLOR_ABDOMINAL, 5), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_MALARIA, _FATIGA_O_CANSANCIO, 5), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_MALARIA, _TOS, 5), // 14- TOS
    EnfermedadSintoma(_MALARIA, _ESCALOFRIOS, 5), // 21- ESCALOFRIOS
    EnfermedadSintoma(_MALARIA, _VOMITOS, 10), // 22- VOMITOS
    EnfermedadSintoma(_MALARIA, _MAREO, 5), // 23- MAREO
    EnfermedadSintoma(_MALARIA, _DIARREA, 10), // 38- DIARREA
    EnfermedadSintoma(_MALARIA, _MALESTAR_EN_TODO_EL_CUERPO, 10), // 61- MALESTAR EN --TODO EL CUERPO
    EnfermedadSintoma(_MALARIA, _RESPIRACION_RAPIDA, 10), // 63- RESPIRACIÓN RÁPIDA
    EnfermedadSintoma(_MALARIA, _FRECUENCIA_CARDIACA_ACELERADA, 14), // 68- FRECUENCIA CARDIACA ACELERADA				
  ];
  static List<EnfermedadSintoma> sintomas26 = [
    // 26- OSTEOPOROSIS
    EnfermedadSintoma(_OSTEOPOROSIS, _PERDIDA_DE_ESTATURA_CON_EL_TIEMPO, 50), // 76- PÉRDIDA DE ESTATURA CON EL TIEMPO.
    EnfermedadSintoma(_OSTEOPOROSIS, _DOLOR_DE_ESPALDA, 25), // 77- DOLOR DE ESPALDA
    EnfermedadSintoma(_OSTEOPOROSIS, _FRACTURA_DE_HUESOS_FACILMENTE, 24), // 78- FRACTURA DE HUESOS FACILMENTE															
  ];
  static List<EnfermedadSintoma> sintomas27 = [
    // 27- PANCREATITIS AGUDA
    EnfermedadSintoma(_PANCREATITIS_AGUDA, _FIEBRE, 9), // 1- FIEBRE
    EnfermedadSintoma(_PANCREATITIS_AGUDA, _DOLOR_ABDOMINAL, 30), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_PANCREATITIS_AGUDA, _VOMITOS, 15), // 22- VOMITOS
    EnfermedadSintoma(_PANCREATITIS_AGUDA, _NAUSEAS, 15), // 25- NAUSEAS
    EnfermedadSintoma(_PANCREATITIS_AGUDA, _PULSOS_ACELERADOS, 30), // 75- PULSOS ACELERADOS													
  ];
  static List<EnfermedadSintoma> sintomas28 = [
    // 28- PANCREATITIS CRONICA
    EnfermedadSintoma(_PANCREATITIS_CRONICA, _DOLOR_ABDOMINAL, 9), // 9- DOLOR ABDOMINAL
    EnfermedadSintoma(_PANCREATITIS_CRONICA, _PERDIDA_DE_APETITO, 30), // 47- PERDIDA DE APETITO
    EnfermedadSintoma(_PANCREATITIS_CRONICA, _HECES_ACEITOSAS_Y_CON_UN_OLOR_FETIDO, 60), // 74- HECES ACEITOSAS Y CON UN OLOR FÉTIDO															
  ];
  static List<EnfermedadSintoma> sintomas29 = [
    // 29- SIFILIS ETAPA PRIMARIA
    EnfermedadSintoma(_SIFILIS_ETAPA_PRIMARIA, _FIEBRE, 9), // 1- FIEBRE
    EnfermedadSintoma(_SIFILIS_ETAPA_PRIMARIA, _UNA_ERUPCION_CUTANEA, 30), // 72- UNA ERUPCIÓN CUTÁNEA
    EnfermedadSintoma(_SIFILIS_ETAPA_PRIMARIA, _ULCERAS_LLAMADAS_PARCHES_MUCOSO, 60), // 73- ÚLCERAS LLAMADAS PARCHES MUCOSOS															
  ];
  static List<EnfermedadSintoma> sintomas30 = [
    // 30- SIFILIS ETAPA  SECUNDARIA
    EnfermedadSintoma(_SIFILIS_ETAPA_SECUNDARIA, _FIEBRE, 10), // 1- FIEBRE
    EnfermedadSintoma(_SIFILIS_ETAPA_SECUNDARIA, _SARPULLIDO, 9), // 2- SARPULLIDO
    EnfermedadSintoma(_SIFILIS_ETAPA_SECUNDARIA, _DOLOR_MUSCULAR, 20), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_SIFILIS_ETAPA_SECUNDARIA, _DOLOR_ARTICULAR, 20), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_SIFILIS_ETAPA_SECUNDARIA, _PERDIDA_DE_CABELLO, 40), // 71- PERDIDA DE CABELLO													
  ];
  static List<EnfermedadSintoma> sintomas31 = [
    // 31- SIFILIS ETAPA TERCIARIA
    EnfermedadSintoma(_SIFILIS_ETAPA_TERCIARIA, _FIEBRE, 4), // 1- FIEBRE
    EnfermedadSintoma(_SIFILIS_ETAPA_TERCIARIA, _DOLOR_DE_CABEZA,5), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_SIFILIS_ETAPA_TERCIARIA, _DOLOR_MUSCULAR, 20), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_SIFILIS_ETAPA_TERCIARIA, _DOLOR_ARTICULAR, 20), // 6- DOLOR ARTICULAR
    EnfermedadSintoma(_SIFILIS_ETAPA_TERCIARIA, _ESCALOFRIOS, 10), // 21- ESCALOFRIOS
    EnfermedadSintoma(_SIFILIS_ETAPA_TERCIARIA, _NAUSEAS, 20), // 25- NAUSEAS
    EnfermedadSintoma(_SIFILIS_ETAPA_TERCIARIA, _MALESTAR_EN_TODO_EL_CUERPO, 20), // 61- MALESTAR EN --TODO EL CUERPO											
  ];
  static List<EnfermedadSintoma> sintomas32 = [
    // 32- HERPES GENITAL
    EnfermedadSintoma(_HERPES_GENITAL, _DOLOR_O_MOLESTIA_ZONA_ANAL, 30), // 53- DOLOR O MOLESTIA (_ZONA ANAL)
    EnfermedadSintoma(_HERPES_GENITAL, _AMPOLLAS_ZONA_GENITAL, 40), // 66- AMPOLLAS (_ZONA GENITAL)
    EnfermedadSintoma(_HERPES_GENITAL, _DOLOR_O_COMEZON_ZONA_GENITAL, 20), // 67- DOLOR O COMEZÓN (_ZONA GENITAL)
    EnfermedadSintoma(_HERPES_GENITAL, _COSTRAS, 5), // 69- COSTRAS
    EnfermedadSintoma(_HERPES_GENITAL, _ULCERAS, 4), // 70- ÚLCERAS													
  ];
  static List<EnfermedadSintoma> sintomas33 = [
    // 33- PAPERA
    EnfermedadSintoma(_PAPERA, _FIEBRE, 9), // 1- FIEBRE
    EnfermedadSintoma(_PAPERA, _DOLOR_DE_CABEZA, 10), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_PAPERA, _DOLOR_MUSCULAR, 30), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_PAPERA, _FATIGA_O_CANSANCIO, 15), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_PAPERA, _PERDIDA_DE_APETITO, 35), // 47- PERDIDA DE APETITO													
  ];
  static List<EnfermedadSintoma> sintomas34 = [
    // 34- TUBERCULOSIS
    EnfermedadSintoma(_TUBERCULOSIS, _DOLOR_DE_PECHO, 40), // 7- DOLOR DE PECHO
    EnfermedadSintoma(_TUBERCULOSIS, _FATIGA_O_CANSANCIO, 5), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_TUBERCULOSIS, _TOS, 20), // 14- TOS
    EnfermedadSintoma(_TUBERCULOSIS, _ESCALOFRIOS, 5), // 21- ESCALOFRIOS
    EnfermedadSintoma(_TUBERCULOSIS, _PERDIDA_DE_APETITO, 5), // 47- PERDIDA DE APETITO
    EnfermedadSintoma(_TUBERCULOSIS, _PERDIDA_DE_PESO, 20), // 49- PERDIDA DE PESO
    EnfermedadSintoma(_TUBERCULOSIS, _SUDORES, 4), // 65- SUDORES
  ];
  static List<EnfermedadSintoma> sintomas35 = [
    // 35- COVID
    EnfermedadSintoma(_COVID, _FIEBRE, 3), // 1- FIEBRE
    EnfermedadSintoma(_COVID, _DOLOR_DE_CABEZA, 3), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_COVID, _DOLOR_DE_GARGANTA, 3), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_COVID, _DOLOR_MUSCULAR, 3), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_COVID, _FATIGA_O_CANSANCIO, 3), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_COVID, _TOS, 2), // 14- TOS
    EnfermedadSintoma(_COVID, _ESCALOFRIOS, 2), // 21- ESCALOFRIOS
    EnfermedadSintoma(_COVID, _DIFICULTAD_PARA_RESPIRAR, 20), // 64- DIFICULTAD PARA RESPIRAR
    EnfermedadSintoma(_COVID, _PERDIDA_OLFATO, 30), // 79- PERDIDA OLFATO
    EnfermedadSintoma(_COVID, _PERDIDA_GUSTO, 30), // 80- PERDIDA GUSTO								
  ];
  static List<EnfermedadSintoma> sintomas36 = [
    // 36- RABIA
    EnfermedadSintoma(_RABIA, _FIEBRE, 4), // 1- FIEBRE
    EnfermedadSintoma(_RABIA, _VOMITOS, 5), // 22- VOMITOS
    EnfermedadSintoma(_RABIA, _NAUSEAS, 5), // 25- NAUSEAS
    EnfermedadSintoma(_RABIA, _BABEO, 20), // 81- BABEO
    EnfermedadSintoma(_RABIA, _CONVULSIONES, 30), // 82- CONVULSIONES.
    EnfermedadSintoma(_RABIA, _CAMBIOS_DE_ANIMO, 5), // 83- CAMBIOS DE ANIMO
    EnfermedadSintoma(_RABIA, _PERDIDA_DE_LA_FUNCION_MUSCULAR, 10), // 84- PERDIDA DE LA FUNCION MUSCULAR
    EnfermedadSintoma(_RABIA, _MORDEDURA_DE_UN_ANIMAL, 10), // 85- MORDEDURA DE UN ANIMAL
    EnfermedadSintoma(_RABIA, _PERDIDA_DE_SENSIBILIDAD_ZONA_DE_LA_MORDEDURA, 10), // 86- PERDIDA DE SENSIBILIDAD (_ZONA DE LA MORDEDURA)
  ];
  static List<EnfermedadSintoma> sintomas37 = [
    // 37- OMICRON
    EnfermedadSintoma(_OMICRON, _FIEBRE, 19), // 1- FIEBRE
    EnfermedadSintoma(_OMICRON, _DOLOR_DE_GARGANTA, 10), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_OMICRON, _DOLOR_MUSCULAR, 10), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_OMICRON, _FATIGA_O_CANSANCIO, 50), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_OMICRON, _TOS, 10), // 14- TOS
  ];
  static List<EnfermedadSintoma> sintomas38 = [
    // 38- DELTA
    EnfermedadSintoma(_DELTA, _FIEBRE, 5), // 1- FIEBRE
    EnfermedadSintoma(_DELTA, _DOLOR_DE_CABEZA, 5), // 3- DOLOR DE CABEZA
    EnfermedadSintoma(_DELTA, _DOLOR_DE_GARGANTA, 20), // 4- DOLOR DE GARGANTA
    EnfermedadSintoma(_DELTA, _DOLOR_MUSCULAR, 5), // 5- DOLOR MUSCULAR
    EnfermedadSintoma(_DELTA, _FATIGA_O_CANSANCIO, 40), // 10- FATIGA O CANSANCIO
    EnfermedadSintoma(_DELTA, _TOS, 5), // 14- TOS
    EnfermedadSintoma(_DELTA, _VOMITOS, 5), // 22- VOMITOS
    EnfermedadSintoma(_DELTA, _CONGESTION_NASAL, 4), // 33- CONGESTION NASAL
    EnfermedadSintoma(_DELTA, _DIARREA, 10), // 38- DIARREA
  ];

  static List<List<EnfermedadSintoma>> datos = [
    sintomas01,
    sintomas02,
    sintomas03,
    sintomas04,
    sintomas05,
    sintomas06,
    sintomas07,
    sintomas08,
    sintomas09,
    sintomas10,
    sintomas11,
    sintomas12,
    sintomas13,
    sintomas14,
    sintomas15,
    sintomas16,
    sintomas17,
    sintomas18,
    sintomas19,
    sintomas20,
    sintomas21,
    sintomas22,
    sintomas23,
    sintomas24,
    sintomas25,
    sintomas26,
    sintomas27,
    sintomas28,
    sintomas29,
    sintomas30,
    sintomas31,
    sintomas32,
    sintomas33,
    sintomas34,
    sintomas35,
    sintomas36,
    sintomas37,
    sintomas38
  ];
}