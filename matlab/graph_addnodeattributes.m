function G_new = graph_addnodeattributes(G,ptCloud,iscolor)
    G_new = G;
    G_new.Nodes.X = ptCloud.Location(:,1)/max(abs(ptCloud.Location(:,1)));
    G_new.Nodes.Y = ptCloud.Location(:,2)/max(abs(ptCloud.Location(:,2)));
    G_new.Nodes.Z = ptCloud.Location(:,3)/max(abs(ptCloud.Location(:,3)));
    if(iscolor == 1)
    G_new.Nodes.R = double(ptCloud.Color(:,1))/255;
    G_new.Nodes.G = double(ptCloud.Color(:,2))/255;
    G_new.Nodes.B = double(ptCloud.Color(:,3))/255;
    G_new.Nodes.Imp = zeros(ptCloud.Count,1);
    else 
    G_new.Nodes.R = zeros(ptCloud.Count,1);
    G_new.Nodes.G = zeros(ptCloud.Count,1);
    G_new.Nodes.B = zeros(ptCloud.Count,1);
    G_new.Nodes.Imp = zeros(ptCloud.Count,1);
    end
end