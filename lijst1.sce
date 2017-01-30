# Scenario for playing .wav files 
# 2015 adapted by Anne van Leeuwen for rhythm experiment 3.0
# listeners are presented with 3 dialogues (self-paced)
# after the third dialogue they have to evaluate how it sounds
 
# audio mode moet in exclusive mode staan als we gaan testen! aanpassen aub

# gedragsexperiment, geen port_codes weggeschreven

scenario = "lijst1";
pcl_file = "lijst1.pcl";
no_logfile = false ;

#onderstaande moet op TRUE staan!!
#write_codes = false;               
#pulse_width= 10;

# define button codes, 1=enter, 2=x (helemaal niet mee eens), 3=c, 4=v, 5=b, 6=n, 7=m, 8=,(helemaal wel mee eens)  
active_buttons = 8;    
button_codes = 1,2,3,4,5,6,7,8;
#response_port_output = false;
response_logging = log_active;

default_font_size=30;
default_font = "Arial";
default_text_color = 160,160,160;
default_background_color = 255,255,153;
#default_formatted_text = true;

begin;
	
picture {} default;			#blank screen
	
	# We define a sound and name it
	sound { 
		wavefile 
		{	filename = ""; 
			preload = false;
		} 
		s; 
	} snd;

	# we define a picture and name it
	picture { 
		bitmap 
		{	filename = ""; 
			preload = false;
		} p; 
		x=0; y=0;
	} pct;


	# Main trial definition. Play wav sound and send marker at the beginning of each dialogue plus
	# 12 crtitical markers during the dialogue.
	trial { 
		trial_duration = stimuli_length; 
		monitor_sounds = true;

		stimulus_event{
			picture pct;
			deltat = 100;
			response_active = false;
			code = "active";
			duration = next_picture;
		} event0;
		
	#play sound 1000ms after start picture, sends out code 100=onset sound code, start speaker A
		stimulus_event {
			sound snd; 
			deltat = 0; 
			code = "";			
			response_active = false;
		} wavevent;
		
		stimulus_event {
			nothing {};
			deltat = 0; 
			code = "";
			response_active = false;
		} event_nothing;

	} playsent;

#trial for blank screen between sound and question
	trial{
		trial_duration = stimuli_length;
		trial_type = fixed;
		stimulus_event{
		picture default;
		deltat = 0;
		duration = 500;
		code = "";
		response_active = false;
		}event_blank;
	} trial_blank;

# array voor plaatjes tijdens de start van de dialoog
	array {
		picture {description = "inactive_start1"; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start1;
		picture {description = "inactive_start2"; bitmap { filename = "inactive_start2_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start2;
		picture {description = "inactive_start1"; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start3;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start4;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start5;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start6;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start7;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start8;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start9;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start10;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start11;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start12;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start13;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start14;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true;}; x=0; y=0;} inactive_start15;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start16;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start17;
		picture {description = "inactive_start1" ; bitmap { filename = "inactive_start1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_start18;
	} inactive_start;


# array voor plaatjes tijdens de eerste dialoog
	array {
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first1;
		picture {description = "active_first2" ; bitmap { filename = "active_first2_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first2;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first3;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first4;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first5;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first6;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first7;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first8;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first9;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first10;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first11;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first12;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first13;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first14;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first15;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first16;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first17;
		picture {description = "active_first1" ; bitmap { filename = "active_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_first18;		
	} active_first;

# array voor plaatjes tijdens de eerste dialoog
	array {
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first1;
		picture {description = "inactive_first2" ; bitmap { filename = "inactive_first2_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first2;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first3;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first4;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first5;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first6;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first7;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first8;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first9;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first10;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first11;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first12;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first13;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first14;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first15;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first16;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first17;
		picture {description = "inactive_first1" ; bitmap { filename = "inactive_first1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_first18;
	} inactive_first;


# array voor plaatjes tijdens de tweede dialoog
	array {
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second1;
		picture {description = "active_second2" ; bitmap { filename = "active_second2_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second2;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second3;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second4;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second5;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second6;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second7;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second8;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second9;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second10;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second11;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second12;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second13;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second14;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second15;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second16;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second17;
		picture {description = "active_second1" ; bitmap { filename = "active_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_second18;
	} active_second;

# array voor plaatjes tijdens de tweede dialoog
	array {
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second1;
		picture {description = "inactive_second2" ; bitmap { filename = "inactive_second2_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second2;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second3;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second4;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second5;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second6;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second7;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second8;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second9;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second10;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second11;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second12;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second13;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second14;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second15;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second16;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second17;
		picture {description = "inactive_second1" ; bitmap { filename = "inactive_second1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_second18;
	} inactive_second;

# array voor plaatjes tijdens de tweede dialoog
	array {
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third1;
		picture {description = "active_third2" ; bitmap { filename = "active_third2_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third2;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third3;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third4;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third5;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third6;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third7;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third8;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third9;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third10;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third11;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third12;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third13;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third14;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third15;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third16;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third17;
		picture {description = "active_third1" ; bitmap { filename = "active_third1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} active_third18;
	} active_third;

	array {
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end1;
		picture {description = "inactive_end2" ; bitmap { filename = "inactive_end2_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end2;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end3;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end4;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end5;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end6;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end7;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end8;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end9;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end10;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end11;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end12;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end13;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end14;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end15;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end16;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end17;
		picture {description = "inactive_end1" ; bitmap { filename = "inactive_end1_shrunk.png";  scale_factor = 0.3; preload = true; }; x=0; y=0;} inactive_end18;
	} inactive_end;

# trial definition voor inactive start and end
	trial{
		trial_type = fixed;
		trial_duration = 500;
		stimulus_event{
			picture pct;
			deltat = 0;
			duration = next_picture;
			code = "";
			response_active = false;
		}event_inactive;
	} trial_inactive;

	trial{
		trial_type = fixed;
		trial_duration = 500;
		stimulus_event{
			picture pct;
			deltat = 0;
			duration = next_picture;
			code = "";
			response_active = false;
		}event_inactive_start;
	} trial_inactive_start;


#trial active first display
	trial {		
		trial_type = correct_response;
		trial_duration = forever; 
		
		stimulus_event{
			picture pct;
			deltat = 0;
			code = "";
			response_active = true;
			target_button = 1;
			duration = next_picture;
		}event_active;
	}trial_active;

	trial {		
		trial_type = fixed;
		trial_duration = 200;
		
		stimulus_event{
			picture pct;
			deltat = 0;
			#code = "";
			response_active = false;
			duration = next_picture;
		}event_active_stay;
	}trial_active_stay;

	array {
		picture { bitmap { filename = "foto1.jpg"; preload = true; description = "pauze1" ;}; x=0; y=0;} pic1;
		picture { bitmap { filename = "foto1.jpg"; preload = true; description = "pauze2" ;}; x=0; y=0;} pic2;
		picture { bitmap { filename = "foto1.jpg"; preload = true; description = "pauze3" ;}; x=0; y=0;} pic3;
		picture { bitmap { filename = "foto1.jpg"; preload = true; description = "pauze4" ;}; x=0; y=0;} pic4;
		picture { bitmap { filename = "foto1.jpg"; preload = true; description = "pauze5" ;}; x=0; y=0;} pic5;
		picture { bitmap { filename = "foto1.jpg"; preload = true; description = "pauze6" ;}; x=0; y=0;} pic6;
	} pauzes;

	trial{
		trial_duration = stimuli_length;
		trial_type = fixed;
		#trial_duration = 8000;
			stimulus_event {
				picture pic1;
				duration = 8000; 
				code = "pauze1";
				deltat = 0;
				response_active = false;
				#duration = next_picture;
				} event_pauze;
	}trial_pauze;


	picture { text {caption = "WELKOM! \n \n Druk op Enter om met het experiment te beginnen"; font_size = 30;}; x=0; y=0;} beginexp; 
	picture { text {caption = "Begin Oefensessie \n Druk op Enter om verder te gaan"; font_size = 30;}; x=0; y=0;} startoefen;
	picture { text {caption = "Einde Oefensessie \n Heb je nog vragen? Stel deze dan nu aan de proefleider! \n Druk op Enter om verder te gaan"; font_size = 30;}; x=0; y=0;} eindoefen;
	picture { text {caption = "BEGIN EXPERIMENT \n \n Druk op Enter om met het experiment te beginnen"; font_size = 30;}; x=0; y=0;} begintest; 
	picture { text {caption = "Luister aandachtig \n Druk op Enter zodra het fragment groen is. \n Het fragment wordt dan afgespeeld"; font_size = 30;}; x=0; y=0;} aandacht; 
	picture { text {caption = "EINDE EXPERIMENT \n Dank je wel voor het meedoen";}; x=0; y=0;} eindexp;    
	
picture { text {caption = 
"PAUZE

Neem een korte pauze.
Knipper even goed met je ogen, beweeg je nek langzaam heen en weer
en draai rustig met je schouders.

Druk op Enter als je klaar bent om door te gaan.";max_text_height = 1200; max_text_width = 1600; font_size = 30;}; x=0; y=0;} pauzeklein;

text {caption = "In de reactie van de tweede spreker hoorde ik:"; font_size = 30;} text1;
#text {caption = "Gaat de tweede spreker daarin mee?"; font_size = 30;} text2;
text {caption = "VERWIJDERING"; font_size = 25;}text_verwijdering;


ellipse_graphic {
      ellipse_width = 20;
      ellipse_height = 20;
      color = 166, 166, 166;
      rotation = 30;
   }circle1;

ellipse_graphic {
      ellipse_width = 20;
      ellipse_height = 20;
      color = 166, 166, 166;
      rotation = 30;
   }circle2;

ellipse_graphic {
      ellipse_width = 20;
      ellipse_height = 20;
      color = 166, 166, 166;
      rotation = 30;
   }circle3;

ellipse_graphic {
      ellipse_width = 20;
      ellipse_height = 20;
      color = 166, 166, 166;
      rotation = 30;
   }circle4;

ellipse_graphic {
      ellipse_width = 20;
      ellipse_height = 20;
      color = 166, 166, 166;
      rotation = 30;
   }circle5;

ellipse_graphic {
      ellipse_width = 20;
      ellipse_height = 20;
      color = 166, 166, 166;
      rotation = 30;
   }circle6;

ellipse_graphic {
      ellipse_width = 20;
      ellipse_height = 20;
      color = 166, 166, 166;
      rotation = 30;
   }circle7;

text {caption = "TOENADERING"; font_size = 25;}text_toenadering;

 # \t O\t \t O\t \t O\t \t O\t \t O\t \t O\t \t O\t TOENADERING"
picture {
			text text1; x=0; y=0;
			text text_verwijdering; right_x=-200; y=-150;
			ellipse_graphic circle1; x=-150; y=-150;
			ellipse_graphic circle2; x=-100; y=-150;
			ellipse_graphic circle3; x=-50; y=-150;
			ellipse_graphic circle4; x=0; y=-150;
			ellipse_graphic circle5; x=50; y=-150;
			ellipse_graphic circle6; x=100; y=-150;
			ellipse_graphic circle7; x=150; y=-150;
			text text_toenadering; left_x=200; y=-150;
			
			} vraag3;
			
	# Warning before the start

	trial {
		trial_type = correct_response;
		trial_duration = forever; 
		picture beginexp;
		code = "startexp";
		target_button = 1;
		response_active = true;
	}startexp;
	
	trial {
		trial_type = correct_response;
		trial_duration = forever; 
		picture startoefen;
		code = "startoefen"; 
		target_button = 1;
		response_active = true;
	}startoefenblok;

	# End of Practice
	trial {
		start_delay = 1000;
		trial_type = correct_response;
		trial_duration = forever; 
		picture eindoefen;
		code = "eindeoefening";
		target_button = 1;
		response_active = true;
	}endpractice;

	# Begin of Testitems
	trial {
		trial_type = correct_response;
		trial_duration = forever; 
		picture begintest;
		code = "starttest";
		target_button = 1;
		response_active = true;
	}starttest;

	# End of Experiment
	trial {
		start_delay = 1000;
		trial_type = correct_response;
		trial_duration = forever; 
		picture eindexp;
		code = "eindexp";
		target_button = 1;
		response_active = true;
	}endexp;


	# End of Testitems
	trial {
		start_delay = 500;
		trial_duration = 1500; 
		picture aandacht;
		code ="aandacht";
	}payattention;

	trial {
		trial_type = correct_response;
		trial_duration = forever;
		
		stimulus_event {
			picture vraag3;
			target_button = 2,3,4,5,6,7,8;
			code = "vraag";
		} event_vraag3;
		
	}trial_vraag3;

	trial {
		trial_type = fixed;
		trial_duration = 500;
		picture vraag3;
		
	}trial_feedback_vraag3;
	
	trial {
		trial_type = correct_response;
		trial_duration = forever;
		stimulus_event {
		picture pauzeklein;
		target_button = 1;
		code = "pauze2";
		} event_pauze2;
	}trial_pauze2;