package org.jjj.ajnars;

import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.ICoolBarManager;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.action.ToolBarContributionItem;
import org.eclipse.jface.action.ToolBarManager;
import org.eclipse.swt.SWT;
import org.eclipse.ui.IWorkbenchActionConstants;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.ActionFactory.IWorkbenchAction;
import org.eclipse.ui.application.ActionBarAdvisor;
import org.eclipse.ui.application.IActionBarConfigurer;

public class ApplicationActionBarAdvisor extends ActionBarAdvisor {
	// file menu actions:
	private IWorkbenchAction exitAction, saveAction, saveAllAction,
			closeAction, closeAllAction;
	private IWorkbenchAction aboutAction;
	private IWorkbenchAction preferencesAction;
	private IWorkbenchAction newWindowAction;

	public ApplicationActionBarAdvisor(IActionBarConfigurer configurer) {
		super(configurer);
	}

	@Override
	protected void makeActions(final IWorkbenchWindow window) {
		// Creates the actions and registers them.
		// Registering is needed to ensure that key bindings work.
		// The corresponding commands keybindings are defined in the plugin.xml
		// file.
		// Registering also provides automatic disposal of the actions when
		// the window is closed.

		saveAction = ActionFactory.SAVE.create(window);
		register(saveAction);
		saveAllAction = ActionFactory.SAVE_ALL.create(window);
		register(saveAllAction);

		closeAction = ActionFactory.CLOSE.create(window);
		register(closeAction);

		closeAllAction = ActionFactory.CLOSE_ALL.create(window);
		register(closeAllAction);

		exitAction = ActionFactory.QUIT.create(window);
		register(exitAction);
		preferencesAction = ActionFactory.PREFERENCES.create(window);
		register(preferencesAction);
		aboutAction = ActionFactory.ABOUT.create(window);
		register(aboutAction);

		newWindowAction = ActionFactory.OPEN_NEW_WINDOW.create(window);
		register(newWindowAction);
	}

	@Override
	protected void fillMenuBar(IMenuManager menuBar) {
		MenuManager fileMenu = new MenuManager("&Datei");
		MenuManager extraMenu = new MenuManager("E&xtras");
		MenuManager helpMenu = new MenuManager("&Help");

		menuBar.add(fileMenu);
		menuBar.add(extraMenu);
		menuBar.add(new GroupMarker(IWorkbenchActionConstants.MB_ADDITIONS));
		menuBar.add(helpMenu);

		fileMenu.add(newWindowAction);
		fileMenu.add(closeAction);
		fileMenu.add(closeAllAction);
		fileMenu.add(saveAction);
		fileMenu.add(saveAllAction);
		fileMenu.add(new Separator());
		fileMenu.add(exitAction);
		extraMenu.add(preferencesAction);

		// add an additions group because this is what SDK UI expects
		helpMenu.add(new GroupMarker(IWorkbenchActionConstants.MB_ADDITIONS));
		helpMenu.add(new Separator());
		helpMenu.add(aboutAction);
	}

	protected void fillCoolBar(ICoolBarManager coolBar) {
		IToolBarManager toolbar = new ToolBarManager(SWT.FLAT | SWT.RIGHT);
		coolBar.add(new ToolBarContributionItem(toolbar, "main"));
		toolbar.add(newWindowAction);
		toolbar.add(exitAction);

	}

}
