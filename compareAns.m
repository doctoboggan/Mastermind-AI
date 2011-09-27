function [black,white]=compareAns(soln,guess)
whiteArray=zeros(1,6);
for i=0:5
    indexSoln=find(soln==i);
    whiteSoln=length(indexSoln);
    indexGuess=find(guess==i);
    whiteGuess=length(indexGuess);
    whiteArray(1,i+1)=min(whiteSoln,whiteGuess);
end
preWhite=sum(whiteArray);
black=length(find(soln-guess==0));
white=preWhite-black;