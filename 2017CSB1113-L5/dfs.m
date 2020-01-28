function [huffTree, huffTable] = dfs(tree, table, code)
    huffTable = table;
   
    if(~isempty(tree.char))
        huffTree.char = tree.char;
        huffTable.char{end+1} = tree.char;
        huffTable.code{end+1} = code;
    else
        [treeLeft, huffTable] = dfs(tree.left, huffTable, strcat(code, '0'));
        [treeRight, huffTable] = dfs(tree.right, huffTable, strcat(code, '1'));
        huffTree.left = treeLeft;
        huffTree.right = treeRight;
    end
end