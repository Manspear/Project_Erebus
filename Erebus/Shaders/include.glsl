
float getFogFactor(float fFogCoord) 
{ 
	int parm = 2;
   float fResult = 0.0; 
   if(parm == 0) 
      fResult = (200-fFogCoord)/(200-20); 
   else if(parm == 1) 
      fResult = exp(-0.02*fFogCoord); 
   else if(parm == 2) 
      fResult = (500-fFogCoord)/(500-5) * exp(-pow(0.01*fFogCoord, 2.0)); 
       
   fResult = 1.0-clamp(fResult, 0.0, 1.0); 
    
   return fResult; 
}