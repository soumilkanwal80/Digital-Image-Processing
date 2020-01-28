function [huffTree, huffTable] = buildHuffTree(char, prob)
   
    for i = 1:length(prob)
        node(i).char = char(i);
        node(i).prob = prob(i);
        node(i).left = '';
        node(i).right = '';
    end

    while length(node) > 1
        [B, idx] = sort(prob);
        prob = horzcat(prob(idx(1)) + prob(idx(2)), prob(idx(3:end)));
        temp.left = node(idx(1));
        temp.right = node(idx(2));
        temp.prob = prob(1);
        temp.char = '';
        node = [temp node(idx(3:end))];
    end
    table.char = {};
    table.code = {};
    [huffTree, huffTable] = dfs(node(1), table, '');