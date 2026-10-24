package cn.jim.wallethelper;
import android.service.quicksettings.*;
public final class WalletTileService extends TileService {
  public void onStartListening(){super.onStartListening();refreshTile();}
  private void refreshTile(){Tile t=getQsTile();if(t==null)return;t.setLabel("钱包自动任务");t.setState(DailySchedule.enabled(this)?2:1);t.updateTile();}
  public void onClick(){super.onClick();Runnable change=new Runnable(){public void run(){DailySchedule.setEnabled(WalletTileService.this,!DailySchedule.enabled(WalletTileService.this));refreshTile();}};if(isLocked())unlockAndRun(change);else change.run();}
}
