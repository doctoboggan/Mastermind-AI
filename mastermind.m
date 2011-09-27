function [guessMatrix blackF whiteF soln i] = mastermind(soln)
i=1;
%soln=[floor(rand*6) floor(rand*6) floor(rand*6) floor(rand*6)];
guessMatrix(i,:)=[floor(rand*6) floor(rand*6) floor(rand*6) floor(rand*6)];
[blackArray(i) whiteArray(i)] = compareAns(soln,guessMatrix(i,:));


while blackArray(i) ~= 4
    guess=[floor(rand*6) floor(rand*6) floor(rand*6) floor(rand*6)];
    [blackTest(i) whiteTest(i)]=compareAns(guessMatrix(i,:),guess);
    for i=length(blackArray)
        [blackTest(i) whiteTest(i)]=compareAns(guessMatrix(i,:),guess);
        blackLength=length(blackTest==blackArray);
        whiteLength=length(whiteTest==whiteArray);
        blackSum=sum(blackTest==blackArray);
        whiteSum=sum(whiteT==whiteArray);
        
        for j=1:i
            guessStretch(j+1,:)=guess
        end
        guessM(2,:)=guessMatrix
        guessCheck=(guessStretch-guessM)'
        guessSum=sum(abs(guessCheck))
        find(guessSum==0)
        
        if (whiteLength==whiteSum && blackLength==blackSum) && find(guessSum==0)>1
            i=i+1;
            [blackArray(i) whiteArray(i)] = compareAns(soln,guess);
            guessMatrix(i,:)=guess;
            G=0;
        end
    end
end
answer=zeros(i+2,7);
answer(1:i,1:4)=guessMatrix;
blackF=blackArray';
whiteF=whiteArray';
answer(i+2,1:4)=soln;
