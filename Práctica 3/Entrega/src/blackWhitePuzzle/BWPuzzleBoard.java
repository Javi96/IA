package blackWhitePuzzle;

import aima.core.agent.Action;
import aima.core.agent.impl.DynamicAction;

public class BWPuzzleBoard {
	public static Action[] Iz = { new DynamicAction("Iz1"),
			new DynamicAction("Iz2"), new DynamicAction("Iz3") };
	public static Action[] Der = { new DynamicAction("Der1"),
			new DynamicAction("Der2"), new DynamicAction("Der3") };

	private BWPuzzlePiece[] state;
	private int posHole;

	public BWPuzzleBoard() {
		state = new BWPuzzlePiece[] { BWPuzzlePiece.BLACK, BWPuzzlePiece.BLACK, BWPuzzlePiece.BLACK,
				BWPuzzlePiece.HOLE, BWPuzzlePiece.WHITE, BWPuzzlePiece.WHITE, BWPuzzlePiece.WHITE };
		findHole();
	}

	public BWPuzzleBoard(BWPuzzlePiece[] state) {
		this.state = new BWPuzzlePiece[state.length];
		System.arraycopy(state, 0, this.state, 0, state.length);
		findHole();
	}

	public BWPuzzleBoard(BWPuzzleBoard board) {
		this(board.getState());
		findHole();
	}
	
	// -----------Possible moves---------------------
	public void moveIz() {
		swichPieces(posHole - 1, posHole);
		posHole = posHole - 1;
		
	}
	public void moveIzIz() {
		swichPieces(posHole - 2, posHole);
		posHole = posHole - 2;
		
	}
	public void moveIzIzIz() {
		swichPieces(posHole - 3, posHole);
		posHole = posHole - 3;
		
	}
	
	public void moveDer() {
		swichPieces(posHole + 1, posHole);
		posHole = posHole + 1;
		
	}
	public void moveDerDer() {
		swichPieces(posHole + 2, posHole);
		posHole = posHole + 2;
		
	}
	public void moveDerDerDer() {
		swichPieces(posHole + 3, posHole);
		posHole = posHole + 3;
		
	}
// -----------End Possible moves---------------------

//------------Pre-Conds moves -----------------------
	public boolean canMoveHole(Action where){
		for(int i = 0; i < Iz.length; i++){
			if(Iz[i].equals(where)){
				if(posHole - (i + 1) >= 0){
					return true;
				}
			}
		}
		for(int i = 0; i < Der.length; i++){
			if(Der[i].equals(where)){
				if(posHole + (i + 1) < 7){
					return true;
				}
			}
		}
		return false;
	}
//------------End Pre-Conds moves -------------------

//------------Comparation Overrides -----------------
	@Override
	public boolean equals(Object o) {

		if (this == o) {
			return true;
		}
		if ((o == null) || (this.getClass() != o.getClass())) {
			return false;
		}
		BWPuzzleBoard aBoard = (BWPuzzleBoard) o;

		for (int i = 0; i < 7; i++) {
			if (this.state[i] != aBoard.state[i]) {
				return false;
			}
		}
		return true;
	}

	@Override
	public int hashCode() {
		int result = 0;
		for (int i = 0; i < 7; i++) {
			result = (int)Math.pow(10, i) * result + this.state[i].getValue();
		}
		return result;
	}
//--------------End Comparation Overrides -----------------------------
	
	
//--------------Other methods ------------------------
	@Override
	public String toString() {
		StringBuilder chain = new StringBuilder();
		chain.append("[ ");
		for (int i = 0; i < 7; i++) {
			chain.append(state[i].toString() + " ");
		}
		chain.append("]");
		return chain.toString() + "" + posHole;
	}
//----------------End Other methods ----------------------
	
//------------Private Methods------------------------
	public BWPuzzlePiece[] getState() {
		return state;
	}

	private void findHole() {
		for (int i = 0; i < 9; i++) {
			if (state[i].equals(BWPuzzlePiece.HOLE)) {
				posHole = i;
				return;
			}
		}
	}
	
	//p1 -> new hole position
	//p2 -> new piece position
	
	private void swichPieces(int p1, int p2){
		BWPuzzlePiece aux = state[p1];
		state[p1] = BWPuzzlePiece.HOLE;
		state[p2] = aux;
	}
//------------Private Methods------------------------
}
