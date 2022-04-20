%% Setup the Import Options and import the data
opts = spreadsheetImportOptions("NumVariables", 7);

% Specify sheet and range
opts.Sheet = "Sheet1";
opts.DataRange = "A2:G51";

% Specify column names and types
opts.VariableNames = ["IR", "RF", "class", "class_1", "RandomForest", "AdaBoost", "LogisticRegression"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double"];

% Import the data
graph = readtable("C:\Users\amr rashed\Desktop\graph.xlsx", opts, "UseExcel", false);

%% Convert to output type
graph = table2array(graph);

%% Clear temporary variables
clear opts
%%remove the fourth column
graph(:,4)=[];
%%plot IR and RF
plot(graph(:,1),graph(:,2),'*')
xlabel('IR')
ylabel('RF')

