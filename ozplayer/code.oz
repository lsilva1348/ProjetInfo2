local
   % See project statement for API details.
   [Project] = {Link ['Project2018.ozf']}
   Time = {Link ['x-oz://boot/Time']}.1.getReferenceTime

   %%%%%%%%%%
   %Code ICI%
   %%%%%%%%%%
   
   local %� trier alphebetiquement nigga
      NoteToExtended
      PartitionToTimedList
      Mix
   in
      
   % Translate a note to the extended notation.
      fun {NoteToExtended Note}
	 case Note
	 of Name#Octave then
	    note(name:Name octave:Octave sharp:true duration:1.0 instrument:none)
	 [] Atom then
	    case {AtomToString Atom}
	    of [_] then
	       note(name:Atom octave:4 sharp:false duration:1.0 instrument:none)
	    [] [N O] then
	       note(name:{StringToAtom [N]}
		    octave:{StringToInt [O]}
		    sharp:false		    
		    duration:1.0
		    instrument: none)
	    end
	 end
      end

<<<<<<< HEAD
      fun {PartitionToTimedList Partition}
	 nil	 
      end
      
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   

      fun {Mix P2T Music}
	 
      % TODO
	 
	 {Project.readFile 'wave/animaux/cow.wav'}
	 
      end
   
   
=======
   fun {PartitionToTimedList Partition}
      <partition item>::=
      <note>
      |<chord<
      |<extended note>
      |<extended chord>
      |<transformation>
      nil
   end
>>>>>>> parent of 6cfe57f... Rajout des fonctions TimeList

   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

      Music = {Project.load 'joy.dj.oz'}
      
      Start
      


   
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % Uncomment next line to insert your tests.
   % \insert 'tests.oz'
   % !!! Remove this before submitting.
in
   Start = {Time}

   % Uncomment next line to run your tests.
   % {Test Mix PartitionToTimedList}

   % Add variables to this list to avoid "local variable used only once"
   % warnings.
   {ForAll [NoteToExtended Music] Wait}
   
   % Calls your code, prints the result and outputs the result to `out.wav`.
   % You don't need to modify this.
   {Browse {Project.run Mix PartitionToTimedList Music 'out.wav'}}
   
   
   % Shows the total time to run your code.
<<<<<<< HEAD
      {Browse {IntToFloat {Time}-Start} / 1000.0}
   end
   
=======
   {Browse {IntToFloat {Time}-Start} / 1000.0}
   nil
>>>>>>> parent of 6cfe57f... Rajout des fonctions TimeList
end