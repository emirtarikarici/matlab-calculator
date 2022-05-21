classdef EmirTarik_Arici_EE101_TermProject1_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure             matlab.ui.Figure
        GridLayout           matlab.ui.container.GridLayout
        courseCodeProject_2  matlab.ui.control.EditField
        courseCodeProject    matlab.ui.control.EditField
        closeBracket         matlab.ui.control.Button
        openBracket          matlab.ui.control.Button
        cotangent            matlab.ui.control.Button
        fact                 matlab.ui.control.Button
        squareroot           matlab.ui.control.Button
        Display              matlab.ui.control.EditField
        Name                 matlab.ui.control.EditField
        exponent             matlab.ui.control.Button
        tangent              matlab.ui.control.Button
        cosinus              matlab.ui.control.Button
        sinus                matlab.ui.control.Button
        decimal              matlab.ui.control.Button
        num0                 matlab.ui.control.Button
        equal                matlab.ui.control.Button
        add                  matlab.ui.control.Button
        subtract             matlab.ui.control.Button
        multiply             matlab.ui.control.Button
        divide               matlab.ui.control.Button
        percent              matlab.ui.control.Button
        clearButton          matlab.ui.control.Button
        num9                 matlab.ui.control.Button
        num8                 matlab.ui.control.Button
        num7                 matlab.ui.control.Button
        num6                 matlab.ui.control.Button
        num5                 matlab.ui.control.Button
        num4                 matlab.ui.control.Button
        num3                 matlab.ui.control.Button
        num2                 matlab.ui.control.Button
        num1                 matlab.ui.control.Button
    end

    
    methods (Access = private)
        
        function WriteDisplay(app,event)
            if event.Source.Text == "xⁿ"
                event.Source.Text = "^";
                app.Display.Value = [app.Display.Value,event.Source.Text];
                event.Source.Text = "xⁿ";
            elseif event.Source.Text == "X"
                event.Source.Text = "*";
                app.Display.Value = [app.Display.Value,event.Source.Text];
                event.Source.Text = "X";
            elseif event.Source.Text == "%"
                try
                    event.Source.Text = " / 100";
                    app.Display.Value = [app.Display.Value,event.Source.Text];
                    app.Display.Value = string(eval(app.Display.Value));
                    event.Source.Text = "%";
                catch
                    app.Display.Value = "Error! Press AC";
                    event.Source.Text = "%";
                end
            elseif event.Source.Text == "sin"
                 degree = str2double(app.Display.Value);
                 result = sind(degree);
                 app.Display.Value = string(result);
            elseif event.Source.Text == "cos"
                degree = str2double(app.Display.Value);
                result = cosd(degree);
                app.Display.Value = string(result);
            elseif event.Source.Text == "tan"
                degree = str2double(app.Display.Value);
                result = tand(degree);
                app.Display.Value = string(result);
            elseif event.Source.Text == "cot"
                degree = str2double(app.Display.Value);
                result = cotd(degree);
                app.Display.Value = string(result);
            elseif event.Source.Text == "√"
                val = str2double(app.Display.Value);
                result = sqrt(val);
                app.Display.Value = string(result);
            elseif event.Source.Text == "n!"
                try
                    n = str2double(app.Display.Value);
                    result = factorial(n);
                    app.Display.Value = string(result);
                catch
                    app.Display.Value = "Error! Press AC";
                end
            else
                app.Display.Value = [app.Display.Value,event.Source.Text];
            end
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: add, closeBracket, cosinus, cotangent, 
        % ...and 21 other components
        function PushButton(app, event)
            WriteDisplay(app,event)
        end

        % Button pushed function: equal
        function equalButtonPushed(app, event)
            try
                app.Display.Value = string(eval(app.Display.Value));
            catch
                app.Display.Value = "Error! Press AC";
            end
        end

        % Button pushed function: clearButton
        function clearButtonPushed(app, event)
            app.Display.Value = "";
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0 0 0];
            app.UIFigure.Position = [100 100 433 520];
            app.UIFigure.Name = 'MATLAB App';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = {60, 60, 60, 60, 60, 60};
            app.GridLayout.RowHeight = {40, 50, 60, 60, 60, 60, 60, '1x'};
            app.GridLayout.RowSpacing = 11.2222222222222;
            app.GridLayout.Padding = [10 11.2222222222222 10 11.2222222222222];
            app.GridLayout.BackgroundColor = [0 0 0];

            % Create num1
            app.num1 = uibutton(app.GridLayout, 'push');
            app.num1.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num1.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num1.FontName = 'Apple Symbols';
            app.num1.FontSize = 25;
            app.num1.FontColor = [0.9412 0.9412 0.9412];
            app.num1.Layout.Row = 6;
            app.num1.Layout.Column = 3;
            app.num1.Text = '1';

            % Create num2
            app.num2 = uibutton(app.GridLayout, 'push');
            app.num2.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num2.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num2.FontName = 'Apple Symbols';
            app.num2.FontSize = 25;
            app.num2.FontColor = [0.9412 0.9412 0.9412];
            app.num2.Layout.Row = 6;
            app.num2.Layout.Column = 4;
            app.num2.Text = '2';

            % Create num3
            app.num3 = uibutton(app.GridLayout, 'push');
            app.num3.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num3.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num3.FontName = 'Apple Symbols';
            app.num3.FontSize = 25;
            app.num3.FontColor = [0.9412 0.9412 0.9412];
            app.num3.Layout.Row = 6;
            app.num3.Layout.Column = 5;
            app.num3.Text = '3';

            % Create num4
            app.num4 = uibutton(app.GridLayout, 'push');
            app.num4.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num4.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num4.FontName = 'Apple Symbols';
            app.num4.FontSize = 25;
            app.num4.FontColor = [0.9412 0.9412 0.9412];
            app.num4.Layout.Row = 5;
            app.num4.Layout.Column = 3;
            app.num4.Text = '4';

            % Create num5
            app.num5 = uibutton(app.GridLayout, 'push');
            app.num5.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num5.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num5.FontName = 'Apple Symbols';
            app.num5.FontSize = 25;
            app.num5.FontColor = [0.9412 0.9412 0.9412];
            app.num5.Layout.Row = 5;
            app.num5.Layout.Column = 4;
            app.num5.Text = '5';

            % Create num6
            app.num6 = uibutton(app.GridLayout, 'push');
            app.num6.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num6.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num6.FontName = 'Apple Symbols';
            app.num6.FontSize = 25;
            app.num6.FontColor = [0.9412 0.9412 0.9412];
            app.num6.Layout.Row = 5;
            app.num6.Layout.Column = 5;
            app.num6.Text = '6';

            % Create num7
            app.num7 = uibutton(app.GridLayout, 'push');
            app.num7.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num7.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num7.FontName = 'Apple Symbols';
            app.num7.FontSize = 25;
            app.num7.FontColor = [0.9412 0.9412 0.9412];
            app.num7.Layout.Row = 4;
            app.num7.Layout.Column = 3;
            app.num7.Text = '7';

            % Create num8
            app.num8 = uibutton(app.GridLayout, 'push');
            app.num8.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num8.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num8.FontName = 'Apple Symbols';
            app.num8.FontSize = 25;
            app.num8.FontColor = [0.9412 0.9412 0.9412];
            app.num8.Layout.Row = 4;
            app.num8.Layout.Column = 4;
            app.num8.Text = '8';

            % Create num9
            app.num9 = uibutton(app.GridLayout, 'push');
            app.num9.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num9.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num9.FontName = 'Apple Symbols';
            app.num9.FontSize = 25;
            app.num9.FontColor = [0.9412 0.9412 0.9412];
            app.num9.Layout.Row = 4;
            app.num9.Layout.Column = 5;
            app.num9.Text = '9';

            % Create clearButton
            app.clearButton = uibutton(app.GridLayout, 'push');
            app.clearButton.ButtonPushedFcn = createCallbackFcn(app, @clearButtonPushed, true);
            app.clearButton.BackgroundColor = [0.651 0.651 0.651];
            app.clearButton.FontName = 'Apple Symbols';
            app.clearButton.FontSize = 25;
            app.clearButton.Layout.Row = 3;
            app.clearButton.Layout.Column = 3;
            app.clearButton.Text = 'AC';

            % Create percent
            app.percent = uibutton(app.GridLayout, 'push');
            app.percent.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.percent.BackgroundColor = [0.149 0.149 0.149];
            app.percent.FontName = 'Apple Symbols';
            app.percent.FontSize = 25;
            app.percent.FontColor = [0.9412 0.9412 0.9412];
            app.percent.Layout.Row = 3;
            app.percent.Layout.Column = 1;
            app.percent.Text = '%';

            % Create divide
            app.divide = uibutton(app.GridLayout, 'push');
            app.divide.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.divide.BackgroundColor = [0.9294 0.6941 0.1255];
            app.divide.FontName = 'Apple Symbols';
            app.divide.FontSize = 25;
            app.divide.FontColor = [0.9412 0.9412 0.9412];
            app.divide.Layout.Row = 3;
            app.divide.Layout.Column = 6;
            app.divide.Text = '/';

            % Create multiply
            app.multiply = uibutton(app.GridLayout, 'push');
            app.multiply.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.multiply.BackgroundColor = [0.9294 0.6941 0.1255];
            app.multiply.FontName = 'Apple Symbols';
            app.multiply.FontSize = 25;
            app.multiply.FontColor = [0.9412 0.9412 0.9412];
            app.multiply.Layout.Row = 4;
            app.multiply.Layout.Column = 6;
            app.multiply.Text = 'X';

            % Create subtract
            app.subtract = uibutton(app.GridLayout, 'push');
            app.subtract.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.subtract.BackgroundColor = [0.9294 0.6941 0.1255];
            app.subtract.FontName = 'Apple Symbols';
            app.subtract.FontSize = 30;
            app.subtract.FontColor = [0.9412 0.9412 0.9412];
            app.subtract.Layout.Row = 5;
            app.subtract.Layout.Column = 6;
            app.subtract.Text = '-';

            % Create add
            app.add = uibutton(app.GridLayout, 'push');
            app.add.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.add.BackgroundColor = [0.9294 0.6941 0.1255];
            app.add.FontName = 'Apple Symbols';
            app.add.FontSize = 35;
            app.add.FontColor = [0.9412 0.9412 0.9412];
            app.add.Layout.Row = 6;
            app.add.Layout.Column = 6;
            app.add.Text = '+';

            % Create equal
            app.equal = uibutton(app.GridLayout, 'push');
            app.equal.ButtonPushedFcn = createCallbackFcn(app, @equalButtonPushed, true);
            app.equal.BackgroundColor = [0.9294 0.6941 0.1255];
            app.equal.FontName = 'Apple Symbols';
            app.equal.FontSize = 35;
            app.equal.FontColor = [0.9412 0.9412 0.9412];
            app.equal.Layout.Row = [7 8];
            app.equal.Layout.Column = 6;
            app.equal.Text = '=';

            % Create num0
            app.num0 = uibutton(app.GridLayout, 'push');
            app.num0.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.num0.BackgroundColor = [0.2706 0.2706 0.2706];
            app.num0.FontName = 'Apple Symbols';
            app.num0.FontSize = 25;
            app.num0.FontColor = [0.9412 0.9412 0.9412];
            app.num0.Layout.Row = 7;
            app.num0.Layout.Column = [3 4];
            app.num0.Text = '0';

            % Create decimal
            app.decimal = uibutton(app.GridLayout, 'push');
            app.decimal.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.decimal.BackgroundColor = [0.2706 0.2706 0.2706];
            app.decimal.FontName = 'Apple Symbols';
            app.decimal.FontSize = 25;
            app.decimal.FontColor = [0.9412 0.9412 0.9412];
            app.decimal.Layout.Row = 7;
            app.decimal.Layout.Column = 5;
            app.decimal.Text = '.';

            % Create sinus
            app.sinus = uibutton(app.GridLayout, 'push');
            app.sinus.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.sinus.BackgroundColor = [0.149 0.149 0.149];
            app.sinus.FontName = 'Apple Symbols';
            app.sinus.FontSize = 25;
            app.sinus.FontColor = [0.9412 0.9412 0.9412];
            app.sinus.Layout.Row = 3;
            app.sinus.Layout.Column = 2;
            app.sinus.Text = 'sin';

            % Create cosinus
            app.cosinus = uibutton(app.GridLayout, 'push');
            app.cosinus.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.cosinus.BackgroundColor = [0.149 0.149 0.149];
            app.cosinus.FontName = 'Apple Symbols';
            app.cosinus.FontSize = 25;
            app.cosinus.FontColor = [0.9412 0.9412 0.9412];
            app.cosinus.Layout.Row = 4;
            app.cosinus.Layout.Column = 2;
            app.cosinus.Text = 'cos';

            % Create tangent
            app.tangent = uibutton(app.GridLayout, 'push');
            app.tangent.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.tangent.BackgroundColor = [0.149 0.149 0.149];
            app.tangent.FontName = 'Apple Symbols';
            app.tangent.FontSize = 25;
            app.tangent.FontColor = [0.9412 0.9412 0.9412];
            app.tangent.Layout.Row = 5;
            app.tangent.Layout.Column = 2;
            app.tangent.Text = 'tan';

            % Create exponent
            app.exponent = uibutton(app.GridLayout, 'push');
            app.exponent.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.exponent.BackgroundColor = [0.149 0.149 0.149];
            app.exponent.FontName = 'Apple Symbols';
            app.exponent.FontSize = 25;
            app.exponent.FontColor = [0.9412 0.9412 0.9412];
            app.exponent.Layout.Row = 4;
            app.exponent.Layout.Column = 1;
            app.exponent.Text = 'xⁿ';

            % Create Name
            app.Name = uieditfield(app.GridLayout, 'text');
            app.Name.Editable = 'off';
            app.Name.HorizontalAlignment = 'center';
            app.Name.FontName = 'Apple Braille';
            app.Name.FontSize = 15;
            app.Name.FontColor = [0.9412 0.9412 0.9412];
            app.Name.BackgroundColor = [0 0 0];
            app.Name.Placeholder = 'Emir Tarık Arıcı';
            app.Name.Layout.Row = 7;
            app.Name.Layout.Column = [1 2];
            app.Name.Value = 'Emir Tarık Arıcı';

            % Create Display
            app.Display = uieditfield(app.GridLayout, 'text');
            app.Display.Editable = 'off';
            app.Display.HorizontalAlignment = 'right';
            app.Display.FontSize = 55;
            app.Display.FontColor = [0.9412 0.9412 0.9412];
            app.Display.BackgroundColor = [0 0 0];
            app.Display.Placeholder = '0';
            app.Display.Layout.Row = [1 2];
            app.Display.Layout.Column = [1 6];

            % Create squareroot
            app.squareroot = uibutton(app.GridLayout, 'push');
            app.squareroot.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.squareroot.BackgroundColor = [0.149 0.149 0.149];
            app.squareroot.FontName = 'Apple Symbols';
            app.squareroot.FontSize = 25;
            app.squareroot.FontColor = [0.9412 0.9412 0.9412];
            app.squareroot.Layout.Row = 5;
            app.squareroot.Layout.Column = 1;
            app.squareroot.Text = '√';

            % Create fact
            app.fact = uibutton(app.GridLayout, 'push');
            app.fact.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.fact.BackgroundColor = [0.149 0.149 0.149];
            app.fact.FontName = 'Apple Symbols';
            app.fact.FontSize = 25;
            app.fact.FontColor = [0.9412 0.9412 0.9412];
            app.fact.Layout.Row = 6;
            app.fact.Layout.Column = 1;
            app.fact.Text = 'n!';

            % Create cotangent
            app.cotangent = uibutton(app.GridLayout, 'push');
            app.cotangent.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.cotangent.BackgroundColor = [0.149 0.149 0.149];
            app.cotangent.FontName = 'Apple Symbols';
            app.cotangent.FontSize = 25;
            app.cotangent.FontColor = [0.9412 0.9412 0.9412];
            app.cotangent.Layout.Row = 6;
            app.cotangent.Layout.Column = 2;
            app.cotangent.Text = 'cot';

            % Create openBracket
            app.openBracket = uibutton(app.GridLayout, 'push');
            app.openBracket.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.openBracket.BackgroundColor = [0.651 0.651 0.651];
            app.openBracket.FontName = 'Apple Symbols';
            app.openBracket.FontSize = 25;
            app.openBracket.FontColor = [0.149 0.149 0.149];
            app.openBracket.Layout.Row = 3;
            app.openBracket.Layout.Column = 4;
            app.openBracket.Text = '(';

            % Create closeBracket
            app.closeBracket = uibutton(app.GridLayout, 'push');
            app.closeBracket.ButtonPushedFcn = createCallbackFcn(app, @PushButton, true);
            app.closeBracket.BackgroundColor = [0.651 0.651 0.651];
            app.closeBracket.FontName = 'Apple Symbols';
            app.closeBracket.FontSize = 25;
            app.closeBracket.FontColor = [0.149 0.149 0.149];
            app.closeBracket.Layout.Row = 3;
            app.closeBracket.Layout.Column = 5;
            app.closeBracket.Text = ')';

            % Create courseCodeProject
            app.courseCodeProject = uieditfield(app.GridLayout, 'text');
            app.courseCodeProject.Editable = 'off';
            app.courseCodeProject.HorizontalAlignment = 'center';
            app.courseCodeProject.FontName = 'Apple Braille';
            app.courseCodeProject.FontSize = 14;
            app.courseCodeProject.FontColor = [1 1 1];
            app.courseCodeProject.BackgroundColor = [0 0 0];
            app.courseCodeProject.Layout.Row = 8;
            app.courseCodeProject.Layout.Column = [4 5];
            app.courseCodeProject.Value = 'Özyeğin University';

            % Create courseCodeProject_2
            app.courseCodeProject_2 = uieditfield(app.GridLayout, 'text');
            app.courseCodeProject_2.Editable = 'off';
            app.courseCodeProject_2.HorizontalAlignment = 'center';
            app.courseCodeProject_2.FontName = 'Apple Braille';
            app.courseCodeProject_2.FontSize = 15;
            app.courseCodeProject_2.FontColor = [1 1 1];
            app.courseCodeProject_2.BackgroundColor = [0 0 0];
            app.courseCodeProject_2.Layout.Row = 8;
            app.courseCodeProject_2.Layout.Column = [1 3];
            app.courseCodeProject_2.Value = 'EE 101 Project 1';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = EmirTarik_Arici_EE101_TermProject1_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end