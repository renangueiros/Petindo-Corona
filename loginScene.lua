local composer = require( "composer" )
local widget = require( "widget" )

local scene = composer.newScene()

function scene:create( event )

    local sceneGroup = self.view

end

function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

        local statusBar = display.newRect( sceneGroup, 0, 0, display.contentWidth, display.topStatusBarContentHeight)
        statusBar:setFillColor( 26/255, 35/255 , 126/255 )

        local appBar = display.newRect( sceneGroup, 0, display.topStatusBarContentHeight, display.contentWidth, 56)
        appBar:setFillColor( 63/255, 81/255 , 181/255 )

        local background = display.newImageRect( sceneGroup, "background.png", display.contentWidth, display.contentHeight )

        local logo = display.newImageRect( sceneGroup, "logo.png", 87, 24 )
        logo.x = display.contentCenterX
        logo.anchorX = .5
        logo.y = display.topStatusBarContentHeight + 56 / 4

        local emailTextField = native.newTextField( 16, display.contentCenterY - 88, display.contentWidth - 16 * 2, 36)
        emailTextField.placeholder = "Email"

        local passwordTextField = native.newTextField( 16, display.contentCenterY - 44, display.contentWidth - 16 * 2, 36)
        passwordTextField.placeholder = "Senha"

        local loginButton = widget.newButton(
            {
                x = 16,
                y = display.contentCenterY,
                width = display.contentWidth - 16 * 2,
                height = 36,
                shape = "roundedRect",
                label = "ENTRAR",
                fillColor = { default = { 63/255, 81/255 , 181/255 }, over = { 63/255, 81/255 , 181/255 }},
                labelColor = { default = { 1, 1 , 1 }, over = { 1, 1 , 1 }}
            }
        )

        local forgetButton = widget.newButton(
            {
                left = 16,
                top = display.contentCenterY + 52,
                width = display.contentWidth - 16 * 2,
                height = 36,
                label = "ESQUECEU SUA SENHA?",
                labelColor = { default = { 63/255, 81/255 , 181/255 }, over = { 63/255, 81/255 , 181/255 }}
            }
        )

        local dontAccountText = display.newText(
            {
                parent = sceneGroup,
                x = display.contentCenterX,
                y = display.contentHeight - 64,
                text = "Não tem uma conta?"
            }
        )
        dontAccountText:setFillColor( 0, 0, 0, .46)
        dontAccountText.anchorX = .5

        local line = display.newLine( sceneGroup, 0, display.contentHeight - 36, display.contentWidth, display.contentHeight - 36)
        line:setStrokeColor( 0, 0, 0, .46)

        local createNewButton = widget.newButton(
            {
                left = 16,
                top = display.contentHeight - 36,
                width = display.contentWidth - 16 * 2,
                height = 36,
                label = "CRIAR UMA NOVA CONTA",
                labelColor = { default = { 63/255, 81/255 , 181/255 }, over = { 63/255, 81/255 , 181/255 }}
            }
        )
        
    end

end

function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then

    elseif ( phase == "did" ) then

    end

end

function scene:destroy( event )

    local sceneGroup = self.view

end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene