class Solution {
    bool isIsomorphic(String s, String t) {
        if(s.length != t.length) {return false;}

        Map<String, String> stringST = {};
        Map<String, String> stringTS = {};

        for(int i = 0 ; i < s.length ; i++){
            String charS = s[i];
            String charT = t[i];

            if(stringST.containsKey(charS)){
                if(stringST[charS] != charT){
                    return false;
                }
            }else{
                stringST[charS] = charT;
            }

            if(stringTS.containsKey(charT)){
                if(stringTS[charT] != charS){
                    return false;
                }
            }else{
                stringTS[charT] = charS; 
            }
        }

        return true;
    }
}

void main(){

    Solution solution = Solution();
    print(solution.isIsomorphic('foo', 'tss'));
}