
package br.com.mobilemind.j2objc.model;


public class VelosterModel{

    private int id;
    private int serverId;
    private String status;

    public VelosterModel(){
        this.status = SyncStatus.CHANGED;
    }

    public int getId(){
        return id;
    }

    public void setId(int serverId){
        this.id = id;
    }

    public int getServerId(){
        return serverId;
    }

    public void setServerId(int serverId){
        this.serverId = serverId;
    }

    public void setSyncStatus(String status){
        this.status = status;
    }

    public String getSyncStatus(){
        return this.status;
    }

    public boolean isPersited(){
        return this.id > 0;
    }

    public boolean isWebPersisted(){
        return this.serverId > 0;
    }

    public boolean isSyncChanged(){
        return this.status == SyncStatus.CHANGED;
    }

    public boolean isSyncDeleted(){
        return this.status == SyncStatus.DELETED;
    }

    public VelosterModel toSyncOk(){
        this.status = SyncStatus.SYNC_OK;
        return this;
    }

    public VelosterModel toSyncChange(){
        this.status = SyncStatus.CHANGED;
        return this;
    }

}
