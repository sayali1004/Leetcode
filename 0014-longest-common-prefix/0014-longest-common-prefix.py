class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if not strs:
            return ""
        res=strs[0]
        for i in range(1,len(strs)):
            cur=strs[i]
            minlen=min(len(res),len(cur))
            j=0
            while j<minlen:
                if res[j]==cur[j]:
                    j=j+1
                else:
                    break
            res=res[:j]
        return res


        