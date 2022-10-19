class Solution {
public:
    int par(int a, vector<int> &p)
    {
        if(p[a]==-1) return a;
        return par(p[a],p);
    }
    void _union(int a, int b, vector<int> &parent)
    {
        int p_a=par(a,parent);
        int p_b=par(b,parent);
         
        if(p_a==p_b) return ;
        parent[p_a]=p_b;
    }
    bool equationsPossible(vector<string>& eq) {
        
        int n=eq.size();
        vector<int> parent(26,-1);
        
        for(auto x:eq)
        {
            int a=x[0]-'a';
            int b=x[x.size()-1]-'a';
            
            if(x[1]=='=')
            {
                 
                _union(a,b,parent);
            } 
        }
        for(auto x:eq)
        {
            int a=x[0]-'a';
            int b=x[x.size()-1]-'a';
            
            if(x[1]=='=')
            {
                 
               
            }
            else
            {
                int p_a=par(a,parent);
                int p_b=par(b,parent); 
                
                if(p_a ==p_b) return 0;
            }
        }
        return 1;
    }
};
